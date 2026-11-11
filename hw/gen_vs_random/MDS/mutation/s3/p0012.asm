.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rcx], 2
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 0
and rsi, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rsi]
bt edx, eax
and rbx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rbx]
btr eax, ecx
and dl, -33 # instrumentation
cmovns rdi, rdi
bts edi, ecx
and bl, -26 # instrumentation
cmovnp rax, rbx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 100
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 287872877
cmovz si, di
test al, -59
btr rdx, 194
cmovnbe ax, bx
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 8830
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], al
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 6
and dil, bl
and rsi, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
