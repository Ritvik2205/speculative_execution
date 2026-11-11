.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rdi]
or ax, -13633
or bl, dl
and rax, 86
sbb eax, 1675303701
cmp al, 115
sub al, dl
cmp dil, -29
add bl, cl
sbb cl, 35
cmp al, -78
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 44
add al, 40
cmp sil, 127
mov al, -93
or bx, -33
or sil, dil
test ecx, -907816607
test cl, -119
sub al, sil
adc cl, sil
test cl, -10
and sil, al
and rcx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rcx]
cmp cl, dil
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
sub dl, cl
cmp dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
