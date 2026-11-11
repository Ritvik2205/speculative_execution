.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], di
and rcx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], dx
and sil, 8 # instrumentation
cmovz rax, rsi
or ax, 16560
and rdi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rdi], si
and rax, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rax]
bt di, cx
or cl, 7
and cl, cl
and rsi, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], ebx
and rdx, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rdx]
cmovbe dx, ax
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
test ax, 6779
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
and rdx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rdx]
xor dl, -43
and rdx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
