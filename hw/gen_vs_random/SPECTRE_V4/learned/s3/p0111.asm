.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, 185586366
xor bx, cx
or dl, bl
add dil, -84
cmp cl, bl
add dl, 109
neg dl
dec cl
adc bl, al
test dil, -58
sub sil, bl
cmp al, -122
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
add dil, cl
not dl
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
sub rcx, -99
adc al, -59
and bl, -60
sbb sil, -11
and al, 49
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
sub cl, 78
sub sil, al
or al, al
sub al, sil
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
mov dl, cl
and rbx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rbx]
and al, -118
or cl, bl
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
or dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
