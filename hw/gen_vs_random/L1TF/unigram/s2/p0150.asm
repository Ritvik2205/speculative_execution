.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ecx, qword ptr [rbx + rax + 62]
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], ecx
and rax, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], bx
cmovno dx, dx
add bl, -4 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdi]
lea di, qword ptr [rdi + rax + 51]
test esi, 11
lea esi, qword ptr [rbx + rcx]
jmp .bb_0.1
.bb_0.1:
setz sil
neg rdx
cmovb bx, si
lea si, qword ptr [rsi + rdx + 85]
and rax, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rax]
imul dx, di, 38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
