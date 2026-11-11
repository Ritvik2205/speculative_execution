.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb dx, bx
bt edx, esi
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], sil
and dl, 21 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rax]
test dil, bl
and sil, 52 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rsi]
cmovnl rdx, rdi
and cl, 123 # instrumentation
cmovo ax, dx
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 47
and rax, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rax]
xor rdx, rdx
test dl, cl
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdx
test dl, 48
and rax, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rax]
btc cx, ax
and rsi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
