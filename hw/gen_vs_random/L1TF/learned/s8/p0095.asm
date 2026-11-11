.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rdi
cmp rax, 1138518729
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
and rbx, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
cmovb rdx, rbx
or ecx, 18
jmp .bb_0.1
.bb_0.1:
sub bl, 15
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
