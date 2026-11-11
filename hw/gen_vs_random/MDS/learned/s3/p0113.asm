.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, ebx
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rax
and sil, dl
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], bx
btr ax, si
test dl, bl
bts rax, rdx
or bl, bl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
test rdx, 92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
