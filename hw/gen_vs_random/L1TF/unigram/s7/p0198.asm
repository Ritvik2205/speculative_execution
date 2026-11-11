.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov di, 54
sub eax, 3
and rbx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rbx]
mul al
xor si, dx
and rbx, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rdx]
and sil, 37
cmp eax, 123533400
and rbx, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rbx]
mov eax, 88
mov eax, 49
add sil, cl
bt rcx, 38
mov dl, sil
lea eax, qword ptr [rbx + rbx + 24]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
