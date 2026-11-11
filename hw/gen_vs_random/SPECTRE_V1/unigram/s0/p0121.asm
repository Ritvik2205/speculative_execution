.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 2
dec rdi
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
setns cl
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rdx]
add bl, 126 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], al
xor cl, -103
and rsi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rdx]
mov al, al
add dl, 83 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdi]
add al, -92 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
add bl, -41 # instrumentation
xchg al, bl
and rax, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
