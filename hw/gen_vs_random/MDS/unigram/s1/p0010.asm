.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 67
not dl
and si, ax
and dl, 119 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rdi]
and ax, 5001
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
cmovnbe rcx, rdi
and rax, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rax]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf edx, edx
bt rdi, rsi
and dil, -99 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rsi]
and cl, cl
and dl, dl
and rbx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], bx
btc edi, edi
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
cmovnz dx, dx
and rbx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rbx]
bt bx, si
cmovno rbx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
