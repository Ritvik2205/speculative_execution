.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rbx]
xchg edi, edx
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
mov dl, al
test sil, 13
and rbx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rbx]
adc cl, -19
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
add al, al
and rdi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
