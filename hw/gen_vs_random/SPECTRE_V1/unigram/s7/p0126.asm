.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 52 # instrumentation
sets dl
bswap rdi
movsx rcx, ax
add al, 16 # instrumentation
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -40
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
cmp al, bl
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], cx
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 29
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
cmp bl, bl
test rsi, -1408527332
and rbx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rbx]
adc edx, 6
neg dl
and rax, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
