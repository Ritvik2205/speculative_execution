.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, 66
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
xor al, 99
or al, 1
and dl, -104
or bl, cl
and rbx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rbx]
sub al, 29
cmp al, -1
adc bl, cl
sub cl, -32
or sil, -47
add al, -127
and rcx, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rcx]
not bl
sbb cl, 127
cmp dl, dil
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
or cl, sil
add dl, 109
test cl, -52
xor di, si
xor al, -84
cmp al, bl
sub bl, 66
and dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
