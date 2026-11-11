.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -26 # instrumentation
cmovnp ax, dx
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
jp .bb_0.1
jmp .exit_0
.bb_0.1:
cmovnbe cx, ax
and rsi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rsi]
xor al, -41
and rax, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], 13
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], edi
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
cmovl esi, ebx
and rsi, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rsi]
and si, bx
mov dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
