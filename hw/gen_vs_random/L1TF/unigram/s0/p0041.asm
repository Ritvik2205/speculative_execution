.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 1 # instrumentation
and rdx, qword ptr [r14 + rcx] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rcx]
lea rax, qword ptr [rbx]
and rcx, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rcx]
lea edi, qword ptr [rcx]
jmp .bb_0.1
.bb_0.1:
lea edx, qword ptr [rsi + rbx]
test al, -84
cmovp cx, dx
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 10
and ax, dx
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], -49
add al, 115 # instrumentation
lea esi, qword ptr [rsi + rax]
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], bl
add al, -60 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], rdx
imul rdx, rdi, 39
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
