.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 122 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rcx], eax
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], dx
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
adc rcx, 86
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], ebx
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 84
jmp .bb_0.1
.bb_0.1:
xor bx, di
dec bl
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], al
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], 726281652
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], -21
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
