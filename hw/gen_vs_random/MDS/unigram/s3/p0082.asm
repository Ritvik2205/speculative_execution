.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe cx, ax
and rcx, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rcx]
xor cl, al
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
or rax, -2043376621
or cl, al
cmovz si, ax
xor dl, dil
bts si, ax
jmp .bb_0.1
.bb_0.1:
and al, -105 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rsi]
and dil, al
cmovb eax, edi
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 99
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 7
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
and rax, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rax]
or rcx, 14
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], -109
bts di, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
