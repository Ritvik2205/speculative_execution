.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 22 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rsi]
xor cl, dl
cmovs ebx, edi
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
setnp cl
and rbx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
add cl, -84 # instrumentation
xchg rsi, rcx
lea si, qword ptr [rdi]
btc cx, 54
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], ebx
lea cx, qword ptr [rsi + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rdi]
and al, -115 # instrumentation
cmovl bx, ax
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], dx
and rax, 363226538
dec dl
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
cmp rdx, 84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
