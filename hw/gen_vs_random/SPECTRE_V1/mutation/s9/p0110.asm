.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 1 # instrumentation
and dx, word ptr [r14 + rcx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rcx]
btr rbx, rcx
jns .bb_0.1
jmp .exit_0
.bb_0.1:
xor dil, -37
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], -38
sbb cl, cl
and rdx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdx]
lea ebx, qword ptr [rcx + rdx]
xchg bl, bl
sbb eax, 2098460225
and rax, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rax]
movsx rcx, bx
xor cl, dl
and dil, -93
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], dl
sbb al, -14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
