.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add rcx, 23
and rcx, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
add sil, al
and rax, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rax], rax
and rax, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rax]
setns dl
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], 79
and rbx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dil
xor dl, 71
add rbx, 79
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
