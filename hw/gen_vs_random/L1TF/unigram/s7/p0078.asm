.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], bl
cmovle rdx, rax
cmp edi, 76
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rcx], di
mov ecx, eax
and rax, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
xor di, ax
setnbe cl
and rbx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rbx]
mov bx, ax
add sil, 67 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rsi]
adc cl, -34
lea rsi, qword ptr [rsi + rax]
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rsi], rdi
imul esi, ecx, 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
