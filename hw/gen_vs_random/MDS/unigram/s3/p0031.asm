.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, edi
or al, -48
xor eax, 1170472196
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, edi
xor sil, 32
or rax, rdi
test rdi, 97
cmovnl ebx, ecx
and rbx, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rbx]
and bl, -72 # instrumentation
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 2
jmp .bb_0.1
.bb_0.1:
cmovp esi, esi
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], 45
and dil, 27
and bl, -34 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdx]
cmovno ecx, eax
and cl, 89 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rax]
bts eax, 103
or dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
