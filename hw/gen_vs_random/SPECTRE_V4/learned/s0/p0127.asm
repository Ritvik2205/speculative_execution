.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, -66
cmp dl, 23
cmovno ax, cx
cmp eax, 1521417271
or dl, al
add cl, dl
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
xor al, -84
test bl, -91
and bl, cl
cmp al, -116
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
sbb sil, -124
bt ebx, edx
cmp al, 98
cmovbe rcx, rax
cmp al, cl
and bl, sil
xor rax, 93
mov dil, 86
add bl, dl
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
or al, -88
xor dl, -123
and rdi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
