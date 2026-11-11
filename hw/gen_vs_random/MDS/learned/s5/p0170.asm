.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, eax
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 3
or sil, bl
bts rax, 77
and al, -55
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], edi
jmp .bb_0.1
.bb_0.1:
not sil
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rdi]
or sil, dil
and cl, bl
test al, -81
test edi, -1252846009
and rdx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdx]
test dl, dil
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
cmp al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
