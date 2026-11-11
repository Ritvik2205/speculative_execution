.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], -85
jmp .bb_0.1
.bb_0.1:
and rsi, 91
xor dil, dil
and bl, 96 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rdx]
btc dx, 146
cmovno rcx, rcx
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rsi
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 125
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], ax
and rdx, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rdi]
or al, -75
cmovl ebx, eax
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rdx
or rax, 1461812833
btr edx, ebx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rcx]
test dil, dil
and cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
