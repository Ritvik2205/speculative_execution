.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx eax, cx
lea di, qword ptr [rdi]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], bl
and rbx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rdx]
not cx
test dil, -116
jp .bb_0.1
jmp .exit_0
.bb_0.1:
lea esi, qword ptr [rbx]
inc edx
test bl, -8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
