.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 116
or dl, al
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and rcx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 68
and rbx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rbx]
add cl, dl
and dl, -49
cwde
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
