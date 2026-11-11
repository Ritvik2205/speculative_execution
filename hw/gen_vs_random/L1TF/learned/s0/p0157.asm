.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rbx]
sub dl, cl
add cl, sil
btc rdi, rsi
or al, dil
and al, -68
and al, -68
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
