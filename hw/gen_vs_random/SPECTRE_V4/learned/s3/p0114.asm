.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
movzx di, cl
adc dl, 92
and rax, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rax]
add al, 40
sbb cl, 127
or eax, 143573881
or bl, bl
xor bl, dl
cmp dl, cl
sbb cx, -114
or dl, cl
sub sil, 71
sub rbx, 101
mov al, dil
xor al, -60
and al, cl
sub bl, 66
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
xchg dx, si
add cl, -9
or dil, dil
and dl, -11
xor sil, 16
sbb bl, -75
or al, 1
add sil, cl
cmp bx, 113
and dil, -120
or edx, -83
sub al, 26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
