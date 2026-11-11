.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rbx, qword ptr [rbx]
dec dl
or bl, bl
sbb sil, -11
test al, 18
sub al, dil
sbb al, 66
sub bl, sil
and dl, cl
test al, 27
and dl, dil
or al, cl
movzx ax, dil
or esi, 32
and ax, 4
and bl, 76
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
add dil, al
adc dil, -48
sbb al, -39
movzx eax, dx
sub al, dl
cmp rax, -2096157586
and dx, -107
cmovnb ebx, eax
and rdx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
