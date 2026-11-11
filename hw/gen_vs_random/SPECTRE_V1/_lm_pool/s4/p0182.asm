.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -59 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], 96
sub cl, -21
lea di, qword ptr [rcx]
sbb al, 49
and rbx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rbx]
sub dil, -111
jle .bb_0.1
jmp .exit_0
.bb_0.1:
xor bl, bl
cmovle rax, rsi
and rdx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rdx]
lea ecx, qword ptr [rax]
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
movsx rcx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
