.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rdi, 44
xchg rdx, rbx
neg rdx
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
movzx esi, di
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], -54
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], cl
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
or dl, al
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rax
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
test dil, dil
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -64
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], dil
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
