.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], cx
xor bl, -5
and rcx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], cx
and ebx, -52
cmovb dx, bx
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
dec esi
jmp .bb_0.1
.bb_0.1:
or sil, dil
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
sbb rcx, 31
and rcx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
