.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg rax
and rcx, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], ecx
and rcx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rcx], 30
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], rax
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], ecx
and rbx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rbx]
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
add sil, 40 # instrumentation
lea si, qword ptr [rbx + rbx]
test cl, -49
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], cl
bts rax, 140
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rdi]
bts rdx, 70
imul rdx, rcx
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
sbb edx, 33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
