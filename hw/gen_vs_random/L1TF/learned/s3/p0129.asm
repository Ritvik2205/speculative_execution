.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, ebx
cmp rcx, 30
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
adc dl, -12
or sil, -44
bts edi, 77
and rcx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rcx]
and al, -68
and rdi, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdi]
or al, -5
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
