.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
test cl, -86
or dl, al
not al
or sil, -78
test dl, 27
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rdi]
and rax, -731384280
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
xor sil, -126
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
btr ebx, edx
test dl, bl
test ecx, -1843375753
or rcx, 54
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
