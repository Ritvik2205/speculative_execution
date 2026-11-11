.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bx, 56
lea rax, qword ptr [rdx + rdx]
add al, cl
lea bx, qword ptr [rcx]
sub dil, -70
and rdx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 39
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr ax, word ptr [r14 + rcx]
sbb cl, al
cmovb cx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
