.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub ebx, edx
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], 14
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 30
sbb bl, dil
bts rcx, 11
and rdi, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rdi]
setns dil
xor dl, dl
and rsi, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rsi]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 19 # instrumentation
setnz cl
bt ecx, edx
cmp ebx, -33
sub dil, dl
add cl, -123 # instrumentation
cmovnp rcx, rbx
btr bx, cx
and rdi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
