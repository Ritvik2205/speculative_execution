.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
sub ecx, eax
setp cl
and rax, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rax]
lea rcx, qword ptr [rax + rax]
and rdx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdx], 16
add bl, -80 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rsi]
adc dil, 120
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
and rbx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmp bx, word ptr [r14 + rdx]
add al, 39 # instrumentation
cmovnb dx, cx
btc si, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
