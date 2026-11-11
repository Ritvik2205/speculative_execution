.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], 98
and rsi, 0b1111111111111 # instrumentation
movzx esi, byte ptr [r14 + rsi]
cmovz ecx, edi
and rdi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdi]
xor ecx, ebx
setnl bl
adc ecx, 18
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], 75
setp bl
and rbx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rbx]
cmp ax, -11439
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], 71
cmp cx, 19
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -54
cmp di, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
