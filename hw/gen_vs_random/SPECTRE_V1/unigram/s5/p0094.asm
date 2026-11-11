.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rdi]
and rdx, rdi
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], 92
add al, 18
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], bl
and al, 33
and rdx, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rdx]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
xchg dil, dil
inc rbx
and rbx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rbx]
lea edx, qword ptr [rbx]
and dl, -111
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], -71
and rax, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
