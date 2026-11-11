.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -37 # instrumentation
dec dl
xor ecx, 30
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], al
test bl, -92
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], cx
bts edx, 25
add bl, -75 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rcx]
cwd
and rbx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rbx], -54
and rbx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rbx]
lea rsi, qword ptr [rdi + rdi]
and rdx, rbx
and rsi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
