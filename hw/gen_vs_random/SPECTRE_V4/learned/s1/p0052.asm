.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, -34
xor bl, 126
add sil, dil
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
cmp eax, 1521417271
xor dil, 37
sub al, 96
cmp dil, dl
cmp dl, cl
xchg dl, al
or bl, sil
mov al, sil
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -51
cmp al, 105
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
and cx, -117
xor al, cl
test al, -85
mov al, dl
cmp al, -53
adc dl, 7
mov bl, cl
and al, dl
sbb al, 57
and bl, -60
and rdx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdx]
mov sil, dil
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
adc bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
