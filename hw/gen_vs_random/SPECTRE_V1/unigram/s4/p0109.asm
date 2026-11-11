.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec dx
and rdx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdx]
adc bl, 102
and rax, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rax
btc rdx, rax
lea rdi, qword ptr [rsi + rsi + 92]
and dil, cl
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
cmovle bx, di
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 65
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
xchg al, dl
mov esi, ebx
and rcx, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rcx]
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], 47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
