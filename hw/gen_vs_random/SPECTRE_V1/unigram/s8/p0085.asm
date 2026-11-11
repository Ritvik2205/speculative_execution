.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rsi, -14
and rcx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rdx
xor al, sil
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rcx]
and rcx, -29
sbb sil, cl
add dl, -4 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rsi]
add bl, -92 # instrumentation
cmovs ax, dx
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], 29
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], dl
add cl, 112 # instrumentation
movzx edx, cl
test rax, 1469613902
lea si, qword ptr [rbx + rbx + 1252]
lea cx, qword ptr [rbx + rdi + 33]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
