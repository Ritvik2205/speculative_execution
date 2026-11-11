.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 29207
test cl, bl
or al, sil
test dx, 16353
and rdi, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
cmovb di, si
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
test dl, dil
or dl, cl
and ax, -12519
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf edi, edx
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
test rbx, 58
test rax, 1207043993
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
