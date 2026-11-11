.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 1
and rdi, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rdi]
and dl, dil
cmovz bx, dx
btc dx, di
btr bx, di
cmovno si, cx
cmovnbe rsi, rcx
and si, -121
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], dx
xor dl, bl
and eax, 943733866
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rsi]
btc bx, 58
cmovbe rdi, rdi
or cx, 0b1000000000000000 # instrumentation
bsf ax, cx
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], di
and bl, -18 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
