.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rdi]
setb sil
inc cl
lea edi, qword ptr [rsi + rsi + 98]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], cl
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rdi
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], -6
and rdi, 0b1111111111111 # instrumentation
and rdi, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rdi]
add dl, 121 # instrumentation
and rcx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], al
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
add dl, 20 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 15
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 45
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
