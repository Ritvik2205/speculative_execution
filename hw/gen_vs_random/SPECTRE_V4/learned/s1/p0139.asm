.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, 20236
movzx dx, al
and rbx, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rbx]
sub bl, 56
add bl, -38
adc eax, 1307735127
or cl, bl
test esi, -222751961
add al, -32
xchg bx, ax
and cl, cl
or dl, dil
sub cl, 92
cmp sil, al
neg dl
cmp al, -106
mov dl, sil
xchg ebx, esi
xor al, 30
or cl, cl
sub cl, sil
test cl, 78
dec dil
sub sil, -35
neg bl
xor dil, 117
or bl, cl
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 3
adc dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
