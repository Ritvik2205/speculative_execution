.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dil
or ebx, -104
and cl, 49 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rbx]
and al, -33 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
test bl, -14
test dil, -51
and rsi, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rax]
bt di, dx
and rax, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rcx]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rsi
xor si, 91
and rbx, rdi
test cl, cl
and rdi, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
xor cl, 15
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
