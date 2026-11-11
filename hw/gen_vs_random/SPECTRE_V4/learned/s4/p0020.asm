.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, al
and al, -118
btr di, ax
and al, 85
sbb sil, dl
xchg esi, edx
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
or dl, al
xor bl, -126
xchg edi, edx
or dil, 5
test sil, -119
mov al, cl
and al, 5
xor dl, -66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
