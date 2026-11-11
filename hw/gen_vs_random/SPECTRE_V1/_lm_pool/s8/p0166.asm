.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea di, qword ptr [rdi]
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
or al, 19
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
add dl, 47
and dl, bl
bt rcx, rax
and rdx, -98
jle .bb_0.1
jmp .exit_0
.bb_0.1:
sub al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
