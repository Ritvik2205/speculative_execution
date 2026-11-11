.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovo bx, si
btc dx, bx
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
or di, 0b1000000000000000 # instrumentation
bsr ax, di
cmovnp cx, cx
jmp .bb_0.1
.bb_0.1:
or ebx, -104
and dl, -72 # instrumentation
not al
and dl, 13 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rbx]
cmovz ax, si
btr bx, bx
and rax, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rax]
xor ebx, 63
and rdi, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdi]
btc dx, 67
cmovnbe bx, dx
and rdi, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rsi
and bl, 68
or edx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
