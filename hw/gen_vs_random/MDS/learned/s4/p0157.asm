.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, -19
bts rdx, 200
or dl, cl
test cl, -18
jmp .bb_0.1
.bb_0.1:
test rbx, rdi
or ecx, 19
and cl, -6
xor al, 115
and rdx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdi
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
test al, dl
test cl, 0
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
test al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
