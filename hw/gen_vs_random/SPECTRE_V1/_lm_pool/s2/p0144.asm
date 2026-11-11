.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, ebx
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
test bl, -8
lea eax, qword ptr [rdx]
and rsi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdx
sub al, -82
add cl, -127
or dx, 52
and rdx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
