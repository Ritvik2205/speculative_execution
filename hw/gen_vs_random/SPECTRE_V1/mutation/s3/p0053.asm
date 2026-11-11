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
and dil, -114
movsx rcx, bx
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], -38
xor cl, dl
sbb eax, 1830317432
sbb al, 118
xchg bl, bl
and rdx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdx]
sbb cl, cl
jmp .bb_0.2
.bb_0.2:
add bl, 115 # instrumentation
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ebx
cmovbe di, dx
and rbx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rbx]
and bl, dl
btc rsi, rax
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 7
add bl, 104 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdx]
movsx rsi, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
