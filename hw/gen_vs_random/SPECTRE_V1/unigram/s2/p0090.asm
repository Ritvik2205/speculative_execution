.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 5
mov cl, al
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 46
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], dl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rax]
lea ecx, qword ptr [rcx + rcx + 23]
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
xor dil, -37
add cl, bl
bt rbx, 224
cmovbe dx, bx
jns .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -98 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], di
and rsi, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
