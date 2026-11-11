.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, 23633
and rax, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rax]
and al, cl
xor rdi, -9
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
xor bl, sil
not dl
not cl
or al, dil
bts ebx, 205
test eax, -409834435
and sil, -56
or rax, 52
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
