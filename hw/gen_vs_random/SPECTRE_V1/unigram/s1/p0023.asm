.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], -113
adc rdx, 46
and rcx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rcx]
add dl, -65 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], -38
and rcx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], al
sbb cl, 105
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 63
js .bb_0.1
jmp .exit_0
.bb_0.1:
setb cl
add al, 43 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], rdx
and rax, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rbx]
inc rcx
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
