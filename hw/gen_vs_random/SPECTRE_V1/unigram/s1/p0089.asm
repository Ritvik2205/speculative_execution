.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 52 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rsi]
sub cl, bl
add bl, -5 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdi]
or ebx, -124
and rdx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdx]
test esi, 91
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], ax
js .bb_0.1
jmp .exit_0
.bb_0.1:
add al, -25 # instrumentation
sbb ax, cx
and rax, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 5
and rcx, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], sil
add cl, 44 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rsi]
btc ecx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
