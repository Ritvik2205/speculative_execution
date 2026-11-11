.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rax]
and al, 20 # instrumentation
cmovp dx, bx
cmovs bx, di
and rcx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], ecx
and rdi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rbx]
and dl, -73
bts rbx, 115
and dil, 84 # instrumentation
cmovbe di, ax
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], -110
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
btr rdx, rdi
and rdx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], di
and rsi, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rsi]
and dl, dl
and rdx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -7
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rdx
cmovnbe rdi, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
