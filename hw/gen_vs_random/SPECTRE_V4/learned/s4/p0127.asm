.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rbx]
and cl, 126
cmp al, cl
cmp cl, -80
neg bl
sub eax, -529389957
sub dl, 107
adc dl, 32
adc dl, dil
add cl, sil
not sil
test cl, -119
sub al, 63
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
sub al, 11
mov al, dl
and dil, -23
and bl, sil
or eax, -612395655
cmp al, bl
sbb al, cl
xchg ebx, eax
and cl, -128
sbb al, cl
and dil, al
and al, -12
cmp bl, al
cmp sil, -100
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 1
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
and bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
