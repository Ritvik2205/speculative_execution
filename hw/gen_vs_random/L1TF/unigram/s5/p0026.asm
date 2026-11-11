.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ecx
test rsi, rdx
adc bl, 86
or dl, -92
and rcx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rcx], 99
or ax, 0b1000000000000000 # instrumentation
bsf cx, ax
movzx edx, cl
and rdi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rsi]
cmovl eax, esi
add cl, cl
and rdx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], sil
lea ecx, qword ptr [rdi]
xor ebx, -81
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
