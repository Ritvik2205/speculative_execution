.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp dl, al
btr rsi, rdx
lea rcx, qword ptr [rdi + rsi + 83]
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 88
or dl, al
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], 15
and rdi, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
or rax, -1571963467
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
cmovnbe rdi, rsi
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 126
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -26
add dl, 86 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rdx]
cmovnbe bx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
