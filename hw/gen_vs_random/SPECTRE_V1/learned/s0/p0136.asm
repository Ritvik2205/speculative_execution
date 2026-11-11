.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rsi, rdx
sbb esi, -4
setnb al
sbb al, bl
xor dl, bl
and rbx, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], -53
sbb bl, 95
and rcx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rcx]
xor bl, dil
mov rsi, 8418490294875847673
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rax
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rax]
mov bl, 59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
