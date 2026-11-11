.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul al
xchg bl, sil
and rdi, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rdi]
cmp bl, -114
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], 99
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 5
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 47
lea bx, qword ptr [rbx]
movzx ecx, bx
sub cx, 49
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rax]
cmp rax, rdi
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 36
xchg dl, al
add dl, -4 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rsi]
xor bl, -38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
