.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rdx
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], bl
add dl, 47
test dil, -116
lea rdx, qword ptr [rdi + rcx + 59295]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], dl
lea di, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
