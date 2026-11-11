.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, cl
or al, al
or dil, dl
xor al, sil
xor al, 55
xor si, 80
jmp .bb_0.1
.bb_0.1:
cmovnp rdx, rbx
or cl, 119
or al, 74
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
test al, 22
xor bl, dl
or cl, sil
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], 82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
