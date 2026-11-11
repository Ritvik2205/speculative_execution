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
jmp .bb_0.2
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], dl
and rax, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rax]
xor dil, -37
lea ebx, qword ptr [rcx + rdx]
and dil, 98
movsx rcx, bx
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], -38
xor cl, dl
sbb eax, 99727957
sbb al, -114
xchg bl, bl
and rdx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdx]
sbb cl, cl
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], cx
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], 89
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], 91
or sil, 52
and rax, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 7
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], dl
cmp dil, -78
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rdx
and rdi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rdi], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
