.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
mul rcx
and rdi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], si
lea rsi, qword ptr [rbx + rcx + 26]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], 105
bt eax, edx
btr si, ax
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rsi]
add dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
