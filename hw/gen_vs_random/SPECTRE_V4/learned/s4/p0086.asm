.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test di, ax
adc dl, cl
sub al, cl
xchg rcx, rsi
or cx, 23
test dil, -58
cmp dl, al
add dl, 109
cmp ax, -18179
test dil, -83
and al, -1
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and dl, dil
or dil, cl
sub dil, -11
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], dl
xor dil, al
mov edi, esi
adc dil, -48
cmp al, -106
and cx, -117
jmp .bb_0.1
.bb_0.1:
adc dl, cl
and rdi, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rdi]
sub dl, -16
xor al, -60
sub dl, 107
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
adc bl, -20
sbb dl, 75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
