.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test di, dx
inc cl
test edx, -541774418
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
lea cx, qword ptr [rax + rbx + 53]
inc bl
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], 71
and dl, bl
test rdi, rax
and rbx, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rbx]
xor rax, 20
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
