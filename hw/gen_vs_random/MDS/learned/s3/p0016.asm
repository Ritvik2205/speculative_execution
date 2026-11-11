.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb bx, di
cmovb rsi, rax
xor dx, bx
cmovns rsi, rbx
and rax, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rax]
cmovnl ax, dx
xor edi, 38
xor al, -119
xor cl, 122
or si, 0b1000000000000000 # instrumentation
bsr di, si
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rcx
or ebx, edx
and rsi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdi]
bts rsi, 89
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ebx
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 2
and al, 93
cmp al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
