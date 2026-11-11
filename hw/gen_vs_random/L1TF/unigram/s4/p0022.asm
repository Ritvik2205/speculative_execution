.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovo rax, rax
sbb bx, dx
sbb dil, 89
and rsi, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rsi]
sbb dx, 93
and rdi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
or ax, 0b1000000000000000 # instrumentation
bsr si, ax
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], dil
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], cx
test al, bl
sbb dil, sil
and rdx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rdx]
imul si, cx
movzx rbx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
