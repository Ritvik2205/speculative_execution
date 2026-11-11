.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
or bl, al
btr cx, ax
and rax, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rax]
bt si, di
xor sil, -15
and dl, dl
or cl, -77
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], -33
jmp .bb_0.1
.bb_0.1:
bts rdi, 130
cmovbe ecx, edx
and rcx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rcx]
xor ax, -16696
btr cx, di
or al, -75
test ecx, -1843375753
jmp .bb_0.2
.bb_0.2:
test al, 22
xor al, dl
xor sil, 94
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
