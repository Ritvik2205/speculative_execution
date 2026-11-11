.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 31082
test dil, 46
xor rdi, -9
and rax, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rax]
or dil, -78
test dil, 46
jmp .bb_0.1
.bb_0.1:
or edx, ebx
or dl, -89
or ax, 30524
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
and rcx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rcx]
xor sil, -126
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
