.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdx]
btc rax, 106
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], bx
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 70
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], ecx
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], cl
not bl
and rcx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], cl
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], -68
and rbx, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rbx]
and dl, -73
and bl, -62 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rcx]
and bl, 120 # instrumentation
cmovnle eax, eax
and rax, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], di
and rdx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
