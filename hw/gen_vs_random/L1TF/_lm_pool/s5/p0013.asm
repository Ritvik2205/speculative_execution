.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rdi]
sub al, bl
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
test dl, -37
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], esi
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 7
and dil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
