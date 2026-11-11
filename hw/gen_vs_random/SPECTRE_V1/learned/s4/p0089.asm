.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rdi]
and sil, -55
add ax, 6980
lea rcx, qword ptr [rsi + rbx + 90]
xchg al, cl
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], cl
and rdi, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rdi]
lea ax, qword ptr [rdi]
sbb bl, sil
and rax, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
