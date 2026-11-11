.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 12 # instrumentation
cmovnb ebx, esi
sub cl, al
or al, cl
btc rdi, rax
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
cmp dil, 96
jmp .bb_0.1
.bb_0.1:
lea ax, qword ptr [rcx + rdx + 99]
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
