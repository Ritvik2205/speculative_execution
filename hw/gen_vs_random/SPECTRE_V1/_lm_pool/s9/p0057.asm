.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -103 # instrumentation
cmovbe dx, dx
add cl, -127
sub sil, -18
cmp bx, 12
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], 51
add dl, dl
inc edi
test al, -75
add ax, 23362
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
