.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, 20236
or dl, dil
and di, -34
cmp al, 115
cmp al, -78
and edx, 38
adc dil, -48
inc dl
cmp dil, -29
cmp al, 115
add al, 19
sbb al, -52
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
and cl, 32
xor di, 54
cmovnbe ecx, eax
sbb al, -43
xor dl, cl
cmp bl, al
sub dil, 35
add eax, 84
sub rax, -1066968986
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
