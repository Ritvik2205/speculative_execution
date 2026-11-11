.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rdx]
lea rcx, qword ptr [rax + rax]
and rdx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdx], 16
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
sub ecx, eax
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
setp cl
and rax, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rax]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmp bx, word ptr [r14 + rdx]
btc si, ax
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rsi]
add al, 39 # instrumentation
cmovnb dx, cx
adc dil, 120
and rbx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
jmp .bb_0.2
.bb_0.2:
or cl, dl
sub dx, di
and rbx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rcx]
bt rdx, 131
imul edx, ecx
add bl, 92 # instrumentation
sets cl
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 6
sub si, bx
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], -41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
