.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rsi + rdx + 48]
imul di, di
add dl, -84 # instrumentation
lea edx, qword ptr [rbx + rbx + 98]
cmovno rax, rax
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rbx, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], 15
cmp sil, dl
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dl
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], 57
xor al, al
lea rdx, qword ptr [rdx + rsi]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edx, eax
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 23
cmp bl, cl
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
