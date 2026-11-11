.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, ecx
imul al
and rbx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], bl
and rcx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rcx]
btc di, bx
sbb dl, bl
sub bl, -6
and rdi, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
