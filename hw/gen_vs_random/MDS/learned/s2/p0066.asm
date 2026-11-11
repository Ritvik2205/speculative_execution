.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, dx
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rdi
cmovnz ax, cx
xor al, -15
or al, sil
cmovnb di, ax
btr rsi, 73
xor dl, -68
cmovnbe edx, esi
cmovb si, ax
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], cx
and al, -56
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
imul rbx
cmovbe ax, bx
cmovns eax, eax
and rsi, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rax], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
