.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], di
and dl, 53 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
cmovns rcx, rdi
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rdx
and rax, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], edx
or di, 0b1000000000000000 # instrumentation
bsr ax, di
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], ecx
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], si
cmovo ebx, ecx
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, ebx
xor cx, -18
not rsi
or cl, cl
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 5
or si, 0b1000000000000000 # instrumentation
bsr bx, si
test dx, 16353
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
