.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, cl
test bl, dil
xor dil, bl
bt si, dx
jmp .bb_0.1
.bb_0.1:
and al, 82
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
and rdi, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rdi]
xor al, 55
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdi
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dil
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], -1967998643
jmp .bb_0.2
.bb_0.2:
xor eax, 2063216578
or di, 33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
