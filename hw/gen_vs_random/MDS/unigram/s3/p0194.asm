.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, al
xor dl, dil
and cl, 114 # instrumentation
cmovz ax, si
and rax, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rax]
xor rcx, -2
and al, -103
and rsi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rsi]
bt rsi, rdx
btr dx, 47
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rbx
test ax, 6113
xor edx, -13
and rbx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rbx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 58
and rdi, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdi]
and cl, 78 # instrumentation
cmovs dx, di
test ecx, -1843375753
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], 105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
