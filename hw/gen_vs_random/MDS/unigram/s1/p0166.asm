.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dx, bx
test dl, 48
cmovb ax, dx
cmovo ebx, ebx
and bl, 109 # instrumentation
cmovs bx, ax
xor bx, 91
not rdx
or al, 24
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
cmovnb eax, esi
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], dx
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 4
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dil
and dl, 81 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rbx]
cmovle rcx, rax
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rax]
test cl, 91
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
