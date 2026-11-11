.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 112 # instrumentation
adc dl, cl
imul eax, esi
cmovno rdx, rbx
sbb al, -107
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 57
jns .bb_0.1
jmp .exit_0
.bb_0.1:
neg rdi
or sil, 34
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], ax
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], cx
and rcx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], edi
and rdx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rdi]
add sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
