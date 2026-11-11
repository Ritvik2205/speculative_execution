.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ax, 0b1000000000000000 # instrumentation
bsr di, ax
cmovns eax, ebx
cmovb ax, ax
and rcx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], al
and rbx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rbx]
or cl, 10
and rbx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
and dil, al
xor rax, rdx
jmp .bb_0.1
.bb_0.1:
cmovz ax, bx
cmovb rdx, rbx
and rdx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rdx]
and cl, 95 # instrumentation
cmovns rcx, rcx
and cx, dx
and rdx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdx]
cmovl rax, rdx
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 50
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
