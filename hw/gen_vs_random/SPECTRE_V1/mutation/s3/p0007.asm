.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], al
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], -97
xor dl, 71
and rax, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rax]
sbb cl, cl
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], dil
or dl, 41
lea cx, qword ptr [rbx + rdx + 50177]
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], bx
lea dx, qword ptr [rdx + rax + 9274]
jnbe .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 27
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], rax
lea ax, qword ptr [rdx]
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], 720259356
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], dx
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], edi
add dl, dil
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], bx
sbb dl, cl
and rbx, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rbx]
cmovnl rbx, rdx
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], -32
and rsi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], esi
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 4
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], dil
inc rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
