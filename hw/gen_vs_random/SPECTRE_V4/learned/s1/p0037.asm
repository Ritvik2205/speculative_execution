.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
xchg ebx, eax
xor dl, -66
cmp al, 115
add dil, 105
mov bl, cl
cmp al, 109
cmp bl, cl
mov dil, cl
sub sil, -35
sub dl, sil
adc sil, -112
adc dil, cl
xor sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
