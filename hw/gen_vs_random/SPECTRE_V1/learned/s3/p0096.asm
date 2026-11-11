.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdi]
not edx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sub cl, sil
bt ebx, edi
and rdi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rax
inc esi
and rdx, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rdx]
lea rdi, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
