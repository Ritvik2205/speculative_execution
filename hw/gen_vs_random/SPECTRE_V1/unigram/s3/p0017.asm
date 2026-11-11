.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setns cl
cmovbe rdx, rcx
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 30
mul dil
mov dl, dl
lea dx, qword ptr [rcx + rax + 21]
sbb cx, 52
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
or di, dx
sbb al, -127
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], 65
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], dl
cmovnbe rcx, rsi
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], 19
add cl, 22 # instrumentation
cmovns rdx, rax
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], rcx
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
