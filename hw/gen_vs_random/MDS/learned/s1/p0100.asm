.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt dx, ax
test al, 74
and rax, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rax]
test cl, 88
xor di, -116
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], eax
and rax, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
bt si, dx
and rcx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rdi
bts rax, 117
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 3
and si, dx
xor si, 52
and rax, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], dil
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 18
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 2
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], -92
xor al, -119
and rbx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rbx]
cmovz rbx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
