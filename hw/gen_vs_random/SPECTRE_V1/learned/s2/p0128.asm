.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, -66
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], eax
jns .bb_0.1
jmp .exit_0
.bb_0.1:
setns bl
and rbx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rbx]
test al, 40
sub bl, al
and rbx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rbx]
sbb al, bl
and rdi, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], -121
and rax, 1713273566
or al, 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
