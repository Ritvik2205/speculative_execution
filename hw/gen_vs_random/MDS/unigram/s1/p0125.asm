.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rbx]
or cx, si
xor cx, -18
and rdi, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rax
or sil, -78
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 45
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], dx
cmovp ebx, edx
xor cl, 55
and rdx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rax]
xor al, 9
and rcx, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], eax
btr esi, 49
and rcx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rcx]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rcx
and dl, -27 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
