.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rdi, rcx
and rdi, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rdi]
or rbx, rax
and rsi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rsi]
or dx, bx
not rcx
and rbx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rbx]
xor ebx, 40
and rdx, rcx
not al
xor al, -89
xor dl, 8
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 2
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 2
cmovp si, dx
cmovbe si, bx
and rcx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rcx]
cmovz rax, rax
and rsi, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rsi]
cmovno rcx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
