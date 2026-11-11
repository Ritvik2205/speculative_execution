.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 3
add cl, al
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
add cx, -103
or cl, dl
and rcx, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rcx]
cmp dil, bl
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -42
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], bl
and bl, 124
neg cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
