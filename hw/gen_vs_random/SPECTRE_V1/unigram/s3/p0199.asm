.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rcx]
xor al, al
inc ax
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 7
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 44
xor dl, dil
cmovs rax, rax
sbb dil, -106
jp .bb_0.1
jmp .exit_0
.bb_0.1:
movsx bx, dil
and rbx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
lea rax, qword ptr [rcx + rcx + 14]
sub cl, bl
test ebx, -1465665890
btr si, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
