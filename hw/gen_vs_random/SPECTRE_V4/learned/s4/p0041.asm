.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, -863161215
test al, 18
xor dx, -43
sbb dil, 92
adc bl, al
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 46
sbb al, -3
cmp cl, 49
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ebx
xor eax, 1185843233
or al, sil
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
mov bl, dil
or bl, al
or cl, -55
xor al, cl
and rdi, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and ax, 25163
cmp dl, 83
and rdi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdi]
adc sil, bl
cmp al, 105
xor dil, 37
and rcx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rcx]
xor ax, -22861
adc dil, 38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
