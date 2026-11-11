.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 91
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
jmp .bb_0.1
.bb_0.1:
setno dl
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], dil
and rdi, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
neg al
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], al
sbb cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
