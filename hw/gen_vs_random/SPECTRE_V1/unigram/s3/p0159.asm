.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
and dil, dil
and rax, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rax]
sub rcx, 66
and rdi, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], -97
and rcx, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rcx]
lea rdx, qword ptr [rdi + rcx + 38196]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
btc ecx, 70
test cl, dil
mul cl
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edx
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], ax
and rdx, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
