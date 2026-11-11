.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], di
test di, 97
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 3
and dl, -59 # instrumentation
cmovbe dx, ax
xor al, dil
and rcx, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 93
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 0
and dx, bx
and rcx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 78
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
and rdi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rdi], dx
and bl, -18 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rbx]
btr rax, 209
and rsi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], si
and dil, -24 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -74
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
