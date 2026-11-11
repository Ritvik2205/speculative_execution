.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], rbx
and ax, 16313
add al, cl
mov bl, cl
and sil, sil
or al, al
and al, -12
and sil, -84
cmp bl, dl
add dil, -61
dec sil
and al, dl
xor bl, 126
sub cl, sil
and dl, dil
cmp eax, 64
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 17
sub dl, -16
and al, dl
xchg esi, ebx
cmp dil, -29
sub bl, dl
and dl, dil
and dl, sil
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
neg sil
or sil, -47
cmp rax, 1682181214
adc dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
