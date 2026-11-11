.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dil
add dl, -82
test al, cl
adc dl, cl
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], ebx
sub cl, -127
test sil, 1
neg dil
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 5
cmp al, -53
sub dil, sil
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
test al, -26
and sil, -84
test dx, 28394
sub bl, sil
mov sil, dil
and rsi, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rsi]
cmp cl, 59
test edx, -38580719
sub al, -128
mov al, bl
or dl, al
add dil, -61
cmp cl, 59
test al, bl
and rsi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rsi], 42
sub al, cl
and ecx, 71
test al, 72
dec al
dec bl
and rsi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rsi], 93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
