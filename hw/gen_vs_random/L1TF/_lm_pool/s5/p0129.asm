.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 67 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdx]
test al, -56
add dil, sil
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rsi]
or cl, 105
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 5
and rax, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rax]
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], 36
xor ax, 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
