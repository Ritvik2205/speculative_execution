.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec bx
sbb al, 66
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and cl, dl
and rcx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rcx]
add dil, bl
or bl, 111
or rbx, -107
add al, sil
xor dil, al
or eax, -612395655
xor al, -84
cmp dil, al
sub al, cl
sub bl, cl
adc al, dl
sbb sil, cl
cmp al, sil
adc bl, al
jmp .bb_0.1
.bb_0.1:
adc dil, dl
xor al, -66
and dl, 126
adc dl, bl
inc dil
sub al, dl
and cl, -101
or cl, 83
neg bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
