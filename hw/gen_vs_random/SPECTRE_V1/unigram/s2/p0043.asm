.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdx]
and rdx, rdx
lea rcx, qword ptr [rcx + rdx]
and rdx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdx]
sub bl, cl
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], -54
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 51
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 2
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
adc cl, cl
movsx ebx, al
add al, 126 # instrumentation
cmovnl dx, ax
and rcx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
