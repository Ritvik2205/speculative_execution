.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
setl cl
add bl, 104 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rax]
mov rbx, -8992833348021516010
sbb dl, dl
or eax, -1161451853
lea ax, qword ptr [rdi + rcx + 66]
dec rax
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rsi]
lea ax, qword ptr [rbx + rax + 81]
cmovnp cx, cx
and dil, 98
lea ecx, qword ptr [rdx]
and rdx, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rdx]
sub rax, -1628299544
cmp cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
