.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rsi
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
setnp cl
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 6
cmp dil, cl
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 83 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rsi]
cmovp rbx, rsi
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rdi]
xor cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
