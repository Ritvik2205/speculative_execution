.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], -8408
lea rcx, qword ptr [rcx + rbx]
lea ax, qword ptr [rsi + rcx]
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 6
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], di
jmp .bb_0.1
.bb_0.1:
xor cl, bl
cmovo rcx, rax
and rdi, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rdi]
lea rsi, qword ptr [rdi + rcx]
nop
cmovl rbx, rbx
lea rbx, qword ptr [rax + rbx + 18]
cmovbe di, di
and rbx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rbx]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf esi, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
