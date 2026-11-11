.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], 88
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rsi
bt di, si
and rdx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], bx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr ax, word ptr [r14 + rbx]
cmovb ax, bx
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], ebx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], edx
and rdx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdx]
xor eax, 965442135
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], edx
and rbx, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
