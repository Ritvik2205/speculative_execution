.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rbx]
lea bx, qword ptr [rbx + rdx + 44]
xor rdx, rcx
and rsi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rsi], dx
cmovz rdx, rax
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], 87
lea ebx, qword ptr [rdx + rbx + 30]
add dil, -97 # instrumentation
and rbx, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], bx
xchg rcx, rdi
and dl, -49
inc esi
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -88
and rcx, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
