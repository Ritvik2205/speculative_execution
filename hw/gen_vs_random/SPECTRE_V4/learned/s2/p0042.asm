.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
sub cl, -32
cmp dil, bl
xor dil, 37
and al, -124
test bl, 110
cmp al, 75
cmp cx, 0
xor bx, di
add cl, bl
sub cl, -73
sbb dl, bl
sub al, 63
sbb bl, dil
adc dl, 33
sbb bl, cl
sub cl, -73
sub cl, dl
cmp al, dl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
lea cx, qword ptr [rax + rbx + 33]
sub cl, dil
sub al, 0
xor dl, -66
adc al, 43
mov bl, cl
xor rax, 944027678
dec al
bt bx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
