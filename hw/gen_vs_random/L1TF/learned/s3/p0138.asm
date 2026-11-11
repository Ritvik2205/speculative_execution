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
bts word ptr [r14 + rdi], 7
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rcx], eax
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], dx
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rsi]
not cl
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], eax
and rdx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
xor cx, ax
lea rsi, qword ptr [rdi + rdi]
cmovle si, si
and rdx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rdx]
xor eax, -117
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
