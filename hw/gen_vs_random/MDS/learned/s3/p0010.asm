.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 25
or dl, dil
xor cl, 24
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
jmp .bb_0.1
.bb_0.1:
and cl, -71
xor al, -19
or bl, dl
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
and bl, dil
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rax
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 31143
or al, 24
not dil
test cl, 101
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
