.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor si, 91
or dl, cl
and di, 91
test al, -81
xor sil, dl
jmp .bb_0.1
.bb_0.1:
bt edx, 13
and rcx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
and cl, al
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
xor ax, -4010
test si, 1
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
and bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
