.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not dil
or sil, dil
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], sil
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
cmovnl ecx, eax
mov edx, eax
cmovnbe cx, cx
inc cx
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
sets al
or esi, 1 # instrumentation
and edx, esi # instrumentation
shr edx, 1 # instrumentation
div esi
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], dil
and rax, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
xor bl, cl
add cl, 29 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 53
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
