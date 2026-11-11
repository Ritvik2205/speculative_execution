.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
and rax, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 2
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 2
and rcx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rcx]
and si, 10
btc edx, 73
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], ecx
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rax
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], rcx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], ebx
cmovb edi, edx
and rax, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], -20
bt edx, 69
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
and cl, -22 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rdi]
cmovp rax, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
