.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 84
or dl, al
or esi, 32
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and bl, dil
and dl, sil
sub dl, al
and rdx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdx]
cmp di, -8
sub dx, -12
add al, dil
mov al, 90
adc sil, dil
mov dl, 81
bts si, 55
and dl, -104
sub cx, ax
and cl, -101
adc cl, 31
cmovle rcx, rsi
or al, -19
or al, -16
and rdx, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rdx]
or bl, dl
movzx ebx, cx
sbb ax, 75
cmp dl, dil
add dil, dl
movsx si, cl
and rdi, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rdi]
or al, dil
cmp al, 116
xor dl, cl
bt dx, bx
lea edi, qword ptr [rax]
and al, 92
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
sub al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
