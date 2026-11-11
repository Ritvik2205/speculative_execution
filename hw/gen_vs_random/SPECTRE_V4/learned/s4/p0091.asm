.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cx, di
sub sil, bl
sub cl, -94
and rbx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rax]
add cl, bl
adc rdi, 29
sub cl, bl
test al, 57
sbb al, 102
adc bl, 0
test al, 72
sbb al, 66
btc rax, rdi
adc dil, al
sbb al, dl
sub sil, 71
sub al, bl
and rcx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rcx]
xor al, cl
sub cl, -94
imul ax, di
and rcx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rcx]
or cl, -55
cmp dl, dil
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
xor cl, sil
and cl, -101
cmp sil, cl
sub bl, 56
and rcx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], si
and al, -118
test al, bl
adc dil, cl
add dil, -61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
