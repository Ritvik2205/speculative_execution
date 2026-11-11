.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
lea edi, qword ptr [rcx]
add sil, bl
and rdi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rbx
mov dil, sil
and sil, 11
and rax, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rax]
lea cx, qword ptr [rdx + rdi]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
and rbx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rbx], 107
test cl, -62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
