.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, al
dec si
and rsi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rsi]
sub rax, -15
sub dl, 105
btr bx, si
jmp .bb_0.1
.bb_0.1:
test bl, 45
not ebx
and ax, 7954
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdi
cmovle rsi, rax
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
lea bx, qword ptr [rdx]
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], 22
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
