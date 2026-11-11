.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], al
bts dx, ax
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 58
and rax, rax
and bl, 33 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 76
and rax, -1931765367
cmovnl dx, di
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 2
and rcx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rcx]
and sil, 68 # instrumentation
cmovns dx, si
and rdx, 76
and rbx, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
and rcx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], ebx
and bl, -75 # instrumentation
cmovp ebx, ebx
xor cl, 83
and dl, 53 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
