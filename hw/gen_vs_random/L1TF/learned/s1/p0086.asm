.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], -5
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
bt ax, 205
xchg ebx, edx
and rdi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
sub al, cl
inc eax
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], sil
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], 99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
