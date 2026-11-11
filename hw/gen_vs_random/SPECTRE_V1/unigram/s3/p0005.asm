.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 30
mul al
test edi, 66
and rbx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rbx]
movzx ecx, cl
setnp bl
jno .bb_0.1
jmp .exit_0
.bb_0.1:
imul eax
cmp bl, -114
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 64
and rcx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rcx]
or rdx, 92
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], dil
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], rcx
and rbx, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
