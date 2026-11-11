.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 66
imul al
sub al, 26
or dil, -113
xchg eax, edx
and rdx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
add bl, -113 # instrumentation
and rcx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rcx]
sub cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
