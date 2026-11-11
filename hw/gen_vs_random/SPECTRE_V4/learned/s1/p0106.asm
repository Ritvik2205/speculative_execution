.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
add bl, -59
test dl, 24
dec cl
or al, al
inc edi
or cl, bl
xor al, dl
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
adc dil, bl
cmp al, bl
movsx bx, cl
sbb al, 70
sub al, 0
cmovno di, dx
dec bl
xchg rbx, rcx
add al, -4
sub al, 69
cmp al, -44
add cl, dil
mov cl, -38
cmp ebx, -27
sub cl, -51
sub dil, 65
add edi, 75
xor cx, -80
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], al
jmp .bb_0.1
.bb_0.1:
sbb al, -39
neg bl
xor ax, -6064
adc cl, -86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
