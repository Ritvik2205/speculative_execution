.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, edx
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 1
and al, cl
xor rax, -773894210
xor sil, 27
or cl, -77
test cl, 54
or ax, -7150
test eax, -675944960
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
test edx, -372470678
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
and al, 14
or al, -75
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
and al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
