.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -62
cmp al, 75
sbb al, -14
add sil, -18
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
and dl, -11
dec dl
neg sil
sub bl, 66
movzx ax, cl
cmp cl, dl
adc dil, cl
mov al, dil
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
or dil, sil
or ax, 28571
and al, 75
and rcx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rcx]
sub edi, 74
sub al, dil
xor bl, cl
sbb dl, al
or cl, cl
mov dl, cl
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
sub al, 11
adc sil, bl
sub al, bl
add cl, dil
add edx, 89
or dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
