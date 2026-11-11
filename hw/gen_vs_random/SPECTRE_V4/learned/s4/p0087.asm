.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 76
cmp al, bl
and sil, -84
and ax, 4
cmp rax, -47
sbb al, 95
test eax, 1340292467
cmp dil, cl
or cl, -104
cmp al, -44
sub al, 0
not dx
and ax, -12738
test al, dil
and rdi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdi]
xchg dx, bx
cmp edx, -95
adc dil, -17
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
sub dx, -12
adc dl, sil
xor edx, 50
and sil, dil
xor al, 99
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], sil
test dil, cl
mov dx, 24004
xor eax, -48271836
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
add al, -44
and rsi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
sbb dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
