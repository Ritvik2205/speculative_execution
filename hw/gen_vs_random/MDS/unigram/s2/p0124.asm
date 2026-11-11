.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 84 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 38
or rax, -285849275
xor al, cl
and rdi, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
or rax, 1749358813
or dil, -52
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 27
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 6
and dl, -1 # instrumentation
cmovnb si, bx
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 22
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 37
and dx, 25
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], -109
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 26
and rax, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
