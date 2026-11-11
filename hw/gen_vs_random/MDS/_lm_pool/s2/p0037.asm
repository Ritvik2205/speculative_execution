.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -81
and rcx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
and sil, dil
test sil, dil
test dil, 46
test ecx, -1843375753
or al, 16
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], edi
and rbx, 65
and cl, 79
and eax, 454700988
btr ax, bx
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
test dl, 48
or bl, 127
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
