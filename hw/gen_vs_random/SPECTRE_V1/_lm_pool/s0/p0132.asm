.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 21 # instrumentation
adc cx, 34
and al, 33
and rdi, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rdi], 70
and rcx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rcx], 64
setno sil
xchg al, dil
add dl, bl
adc al, cl
cmp cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
