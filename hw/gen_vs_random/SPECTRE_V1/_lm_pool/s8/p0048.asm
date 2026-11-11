.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -23
sub cl, dil
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
lea rbx, qword ptr [rcx + rdx + 38]
test sil, 13
sub di, 23
or ax, 18658
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
