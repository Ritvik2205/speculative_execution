.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdi]
xor rbx, 43
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdx
and rcx, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
cmovb si, dx
lea dx, qword ptr [rdi + rcx + 18]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
