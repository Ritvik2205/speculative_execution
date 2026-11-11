.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rbx], dx
and rcx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rcx]
xor cl, 55
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rdx
and rdx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rdi]
and cl, dl
and rdx, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], -86
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], -102
and rdi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rdi], di
xor cl, 24
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rax
xor dil, -70
btr bx, 100
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], 32
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
