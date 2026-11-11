.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea edx, qword ptr [rdx + rsi]
imul rcx, rax
xor rcx, rax
or bx, 90
and rcx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rcx]
add al, bl
movzx eax, bx
and rax, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rax]
setb dil
add bl, 48 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 73
bswap rcx
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 4
or rcx, rcx
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], al
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], cx
and rcx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
