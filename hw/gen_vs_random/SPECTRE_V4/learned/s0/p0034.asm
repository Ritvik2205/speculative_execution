.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, eax
and ax, 27239
and bl, 76
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
or sil, dil
cmp al, -53
add dl, -82
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
add al, -3
mov dl, cl
adc bl, 97
neg dil
and al, 75
cmp dil, -92
xchg eax, edx
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
mov bl, 106
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
