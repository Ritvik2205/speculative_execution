.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, dl
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 79
and dl, -87 # instrumentation
cmovo dx, cx
and dl, 57 # instrumentation
cmovnb bx, ax
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], cx
and dl, -52 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 78
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
test edi, -1252846009
test al, 22
xor cl, -13
and rdx, 1
and al, -97 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 61
cmovle ebx, edi
and rsi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
