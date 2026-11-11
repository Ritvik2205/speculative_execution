.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 88
xchg al, dl
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
test sil, 1
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], sil
test dil, -26
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
or cl, cl
add dil, al
or dl, 71
dec al
cmp al, -44
add cl, dl
mov dl, al
add al, -44
adc bl, 97
sbb dl, cl
or cl, -104
adc cl, 111
and rdx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rdx]
xchg esi, edx
xor cx, -80
and bl, -30
adc sil, -31
add edi, 87
mov cl, -38
sub cx, -114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
