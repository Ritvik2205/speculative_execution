.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdx]
setp sil
and rsi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rsi]
add bl, 110 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rdi]
lea edi, qword ptr [rdx]
add bl, 76 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rsi]
lea rbx, qword ptr [rax + rsi]
or dil, -28
and rdx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
xchg sil, al
and rbx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], edi
and rax, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rax], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
