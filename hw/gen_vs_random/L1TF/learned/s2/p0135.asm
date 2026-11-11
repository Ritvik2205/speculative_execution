.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rcx]
and dx, 97
xor al, 45
sbb bl, dl
add dl, -1
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], bl
and rdi, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
