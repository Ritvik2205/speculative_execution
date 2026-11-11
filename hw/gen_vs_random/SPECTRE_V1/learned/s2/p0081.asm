.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, -48
add bl, dil
cmp dl, sil
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], -56
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
lea eax, qword ptr [rbx]
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
xor rcx, rdi
lea bx, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
