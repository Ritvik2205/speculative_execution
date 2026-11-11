.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rdi, 72
and rbx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], dl
cmovnp si, si
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
btr rax, rbx
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], di
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
sub bl, -6
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rsi
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], cl
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 75
add bl, 44 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rbx
add cl, -23 # instrumentation
cmovl bx, cx
and rax, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rcx]
mul dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
