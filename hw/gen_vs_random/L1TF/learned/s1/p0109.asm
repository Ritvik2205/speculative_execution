.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
sub rcx, -121
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 84
sub dl, dil
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
test rbx, rsi
test rax, rdi
and rbx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rbx]
test esi, 1
and eax, -409673666
and rdx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
