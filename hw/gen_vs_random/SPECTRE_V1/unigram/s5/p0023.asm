.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], di
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], cx
sub al, bl
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 0
add dl, -125 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], 43
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], esi
lea cx, qword ptr [rdi + rbx]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dl
add al, 19 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], di
add sil, -52 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rbx]
lea edx, qword ptr [rcx + rcx + 79]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
