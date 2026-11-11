.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, -107
cmp rbx, -3
sub bl, cl
or al, bl
test ebx, 43
and rax, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rax]
or al, dl
cmp dl, al
and al, cl
add bl, dl
or bl, 80
and rbx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rbx]
add sil, -18
cmovnb ax, di
sub bl, dil
adc cl, dl
mov al, bl
xor al, -6
test bx, 24072
sbb ebx, -54
adc sil, cl
add dil, cl
xor bl, al
or al, dil
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
and al, 100
and sil, -84
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], sil
and rdx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
