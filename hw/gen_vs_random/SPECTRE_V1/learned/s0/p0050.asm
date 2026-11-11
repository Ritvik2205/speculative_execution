.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -59 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], 86
and rdi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdi]
add cl, bl
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
lea rcx, qword ptr [rdx + rbx]
jmp .bb_0.1
.bb_0.1:
xchg al, dl
or eax, -126
and rdx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
