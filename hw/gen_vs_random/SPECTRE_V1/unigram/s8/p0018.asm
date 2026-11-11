.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc si, 6
sbb bl, dil
lea edi, qword ptr [rsi]
xor dil, -37
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], 68
and al, bl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
test bl, -8
add al, -42 # instrumentation
lea ax, qword ptr [rsi + rdi]
lea di, qword ptr [rdi]
test al, 84
lea rcx, qword ptr [rbx + rsi + 1]
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 7
setp sil
xor eax, edi
cmovnb ecx, ebx
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
