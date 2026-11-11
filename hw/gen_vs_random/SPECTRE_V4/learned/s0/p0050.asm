.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc dl
cmp al, 115
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
and al, 75
xchg bl, dil
add bl, sil
add dl, al
mov al, 9
add dl, bl
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
sub cl, dl
or ax, 28571
sbb ebx, -54
and rsi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rsi]
adc al, -59
adc edx, -125
or al, 1
and bl, 76
and rbx, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rbx]
sub al, 11
add dil, cl
or al, al
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
adc al, -70
mov dl, bl
or cl, al
add dl, dl
bt si, ax
adc dl, cl
and rdx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rdx]
and dl, bl
jmp .bb_0.1
.bb_0.1:
sub al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
