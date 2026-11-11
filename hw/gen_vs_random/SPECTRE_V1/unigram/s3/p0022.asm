.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 50
add bl, -108 # instrumentation
sbb al, 91
add al, -27 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], 37
and rdi, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], al
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], cl
and rsi, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rsi]
test dil, 18
cmovns rdi, rdi
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax]
bt dx, 27
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], 61
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 90
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], dx
and rdi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdi]
not rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
