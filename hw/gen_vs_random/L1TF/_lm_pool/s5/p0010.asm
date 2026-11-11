.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdi]
or al, -57
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 26
adc dil, cl
cmp rax, 108211639
xor sil, cl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
cmp ax, 7046
or al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
