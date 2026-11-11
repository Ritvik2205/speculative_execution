.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 1 # instrumentation
and dx, word ptr [r14 + rcx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rcx]
btr rbx, rcx
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
jns .bb_0.1
jmp .exit_0
.bb_0.1:
xor cl, dl
sbb al, 33
xchg bl, bl
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], dl
and dil, 98
lea ebx, qword ptr [rcx + rdx]
movsx rcx, bx
sbb cl, cl
sbb eax, -417098439
and rdx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], -38
xor dil, -37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
