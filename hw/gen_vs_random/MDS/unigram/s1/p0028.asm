.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, 25
and rdx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 7
and rbx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rbx]
cmovs rsi, rdx
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], ax
or sil, -78
and rbx, 65
and rsi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rsi], dx
jmp .bb_0.1
.bb_0.1:
or dil, -41
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rdx
and dl, 97 # instrumentation
cmovnp cx, ax
and rbx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 7
cmovnbe rbx, rdx
and ax, 19224
and rdx, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rdx]
test ax, 4430
test ax, 6113
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
