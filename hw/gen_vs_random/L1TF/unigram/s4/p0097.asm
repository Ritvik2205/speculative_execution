.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, al
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
add cl, 72 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rdi]
or ax, 0b1000000000000000 # instrumentation
bsr si, ax
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], dil
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], cx
jmp .bb_0.1
.bb_0.1:
test al, bl
sbb dil, cl
and rdx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rdx]
imul si, bx
movzx rbx, bx
or rdi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rdi
add al, -121 # instrumentation
movsx si, al
and rdi, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
