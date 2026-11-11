.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 6
or edx, -83
sub al, 96
or rdx, 1
sub cl, 78
dec dil
test dil, -26
or al, al
xor bl, 27
and rsi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rsi]
cmp al, -116
xor cl, -73
or cl, dl
and al, al
and bl, al
and rax, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rax], 20
and rax, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rax]
cmp cl, -105
sub dil, 65
xor cl, al
cmp al, 109
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rdx]
neg dl
mov al, 125
adc al, 41
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
