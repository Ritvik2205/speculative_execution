.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb dl, 127
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 54
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], 1
and rsi, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btc word ptr [r14 + rax], di
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
add bl, 112 # instrumentation
cmovnb dx, bx
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 95
lea si, qword ptr [rsi + rax + 82]
test al, al
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
setnb al
bts ax, 11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
