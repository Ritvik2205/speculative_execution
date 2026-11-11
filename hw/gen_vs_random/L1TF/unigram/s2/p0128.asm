.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -39 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 52
and rsi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rsi]
test dl, sil
and rsi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rsi]
add cl, 122 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rbx]
bt rdi, rcx
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], rax
lea bx, qword ptr [rsi + rbx]
add cl, -84 # instrumentation
xchg rbx, rdi
add dl, 34
add bx, 85
mov ecx, edx
lea di, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
