.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 12 # instrumentation
cmovnb eax, ebx
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
test dl, -105
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
mov al, dl
lea cx, qword ptr [rdi]
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rcx], 18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
