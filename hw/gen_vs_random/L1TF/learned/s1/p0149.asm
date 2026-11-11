.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdx]
add rax, 909978580
and rcx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
test bl, 45
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edx
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 98
cmovl dx, bx
lea dx, qword ptr [rsi]
cmovz eax, edx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
test rax, -1576813424
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
