.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts esi, 61
xor cl, 24
xor dl, 40
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rdi]
xor al, -89
test ecx, -1843375753
test cl, sil
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
test esi, 425331143
jmp .bb_0.2
.bb_0.2:
or rcx, -17
and rax, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
xor cl, bl
and al, 14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
