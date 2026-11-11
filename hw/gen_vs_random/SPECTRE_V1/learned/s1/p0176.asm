.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rax]
add dl, -105 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
and rdi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdi]
adc cl, cl
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], 69
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
cmovnp ebx, esi
mul cl
add bl, 7 # instrumentation
cmovnl eax, ebx
add bl, -107 # instrumentation
and rcx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdx]
sub cl, 5
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
