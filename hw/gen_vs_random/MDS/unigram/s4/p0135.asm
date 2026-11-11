.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ax, 5320
and rax, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rax]
not bl
and dl, -73 # instrumentation
cmovns rsi, rdx
cmovb edi, ecx
or rdi, 67
bts si, ax
and rdi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rdi]
not dx
test sil, 18
test rbx, 5
and rdi, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdi]
and cl, 113 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rsi]
cmovnbe cx, ax
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
and al, 4 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rsi]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr esi, ebx
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, ecx
and cl, -109 # instrumentation
cmovns rdx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
