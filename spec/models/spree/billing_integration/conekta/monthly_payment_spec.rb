require 'spec_helper'

describe Spree::BillingIntegration::Conekta::MonthlyPayment do
  describe '#provider_class' do
    specify { expect(subject.provider_class).to eq Spree::Conekta::MonthlyPaymentProvider }
  end

  describe '#payment_source_class' do
    specify { expect(subject.payment_source_class).to eq Spree::CreditCard }
  end

  describe '#card?' do
    specify { expect(subject.card?).to be_true }
  end

  describe '#auto_capture?' do
    specify { expect(subject.auto_capture?).to be_false }
  end

  describe '#method_type' do
    specify { expect(subject.method_type).to eq 'conekta_card' }
  end
end
