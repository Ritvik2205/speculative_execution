.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
and ax, -122
and dl, cl
or dl, cl
and rdi, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rdi]
and rbx, rax
bt si, 23
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
or al, sil
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], -27
jmp .bb_0.1
.bb_0.1:
cmovz bx, dx
and rax, 0b1111111111111 # instrumentation
not word ptr [r14 + rax]
or al, bl
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rcx]
xor al, sil
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 5
test bl, al
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
