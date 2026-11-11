.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], -86
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
lea cx, qword ptr [rsi]
setz cl
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], bl
sub dil, dl
sub al, -66
test cl, -120
lea ax, qword ptr [rdi + rbx + 40]
neg al
lea di, qword ptr [rax + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
