.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
inc si
sbb cl, -122
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 58
or cl, bl
adc cl, cl
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], 18
and rdi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdi]
cmp al, al
or sil, 3
adc sil, -115
cmp rdi, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
