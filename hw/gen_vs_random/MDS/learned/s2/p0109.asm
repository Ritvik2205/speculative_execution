.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, al
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdi
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
btc di, 164
jmp .bb_0.2
.bb_0.2:
xor dil, bl
or ax, 85
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
btr ecx, edi
jmp .bb_0.3
.bb_0.3:
or ax, 85
xor cl, dl
and rdx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdi]
xor al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
