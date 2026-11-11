.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 81 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rdx]
and al, al
or cx, 0b1000000000000000 # instrumentation
bsf ax, cx
and cl, -71
test cl, bl
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
cmovbe ebx, esi
jmp .bb_0.1
.bb_0.1:
btr rcx, 91
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
and bl, -28 # instrumentation
cmovl rdx, rdi
and rax, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 4
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
bts di, 73
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf eax, esi
and rbx, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], di
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 60
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
