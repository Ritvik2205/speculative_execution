.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], bx
xor bl, bl
and rax, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rdx]
cmovle dx, cx
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
cmovp rdx, rcx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 0
cmp sil, -11
add cl, -41 # instrumentation
adc cx, bx
add sil, -87 # instrumentation
cmovnle rcx, rsi
and rcx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rcx], rbx
imul edi, edx, 58
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
