.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rax + rdi]
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx], 94
not sil
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], rax
jp .bb_0.1
jmp .exit_0
.bb_0.1:
neg cl
and rax, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rax]
xor sil, sil
bt edx, esi
test ecx, 52
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], al
lea cx, qword ptr [rcx + rsi + 41]
and rbx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rbx], 65
lea ecx, qword ptr [rax + rdx]
cmovle edx, ebx
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
