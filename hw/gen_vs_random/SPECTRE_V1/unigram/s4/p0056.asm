.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv cl
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 11
adc rdi, 16
and rsi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], 34
and rcx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rcx], bx
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdx]
cmp al, dil
lea rbx, qword ptr [rcx + rbx + 83]
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], rax
xchg al, bl
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 94
and rbx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
