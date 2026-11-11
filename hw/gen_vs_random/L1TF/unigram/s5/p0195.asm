.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp al, dil
cmovnle ax, ax
and rax, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rax]
xor al, 45
sbb rax, rdx
lea rbx, qword ptr [rsi + rsi]
and rbx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rbx]
inc rcx
sbb al, 61
and rdx, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rdx]
lea rsi, qword ptr [rcx + rdx + 43352]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 29
sbb al, dil
and rcx, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
