.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 35
sub bl, 66
or al, -47
adc dil, 112
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], cx
sub al, 55
and cl, al
adc eax, -3570960
and rdi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
add rbx, 40
sbb al, 57
and bl, -30
adc al, dl
and cl, -128
add dl, -8
mov al, cl
sbb al, 57
mov cl, bl
mov dl, al
and rcx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rcx]
mov dil, bl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
and rdx, 84
cmp dil, 101
xchg dx, ax
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], cl
xor rax, -111081832
cmp bl, 12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
