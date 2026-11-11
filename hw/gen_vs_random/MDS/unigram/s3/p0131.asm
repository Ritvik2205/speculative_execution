.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr cx, di
cmovl rdx, rax
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
cmovnp rax, rsi
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
btc eax, 40
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], eax
and rsi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rsi]
or dl, -8
xor edi, 84
xor eax, -885380838
and rdx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdx]
test dx, bx
cmovno rcx, rcx
and bl, 34 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rbx]
and rbx, rdi
cmovz di, ax
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf eax, edi
bt ax, dx
test rax, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
