.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea bx, qword ptr [rdx + rdx + 84]
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rax]
cmp cx, 79
add al, -37 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rax
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
or rbx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rbx
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], 92
cmovb bx, cx
setns cl
and rdi, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], al
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdx]
test bx, 52
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
