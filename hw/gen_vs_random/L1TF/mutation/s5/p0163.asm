.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
sbb dil, bl
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
xor dl, 9
cwde
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], -106
sub rax, 57846954
cmovno rsi, rbx
test bl, 45
lea rdi, qword ptr [rdi + rdx + 10019]
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], 46
or di, bx
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
sbb rdx, rdx
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
