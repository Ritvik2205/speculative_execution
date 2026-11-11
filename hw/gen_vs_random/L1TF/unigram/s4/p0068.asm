.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], sil
movzx cx, bl
and rdx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdx]
mov rcx, 8
sbb eax, -1165635662
and rbx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rbx
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], ax
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
cmovnz bx, cx
jmp .bb_0.1
.bb_0.1:
mov cl, sil
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], dl
and rsi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dl
add bl, -92 # instrumentation
setnz al
lea edx, qword ptr [rsi + rdx + 54]
and rdi, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
