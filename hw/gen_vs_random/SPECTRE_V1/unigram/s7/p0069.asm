.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt eax, 78
add bl, 70
adc si, 6
add ecx, 46
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], 23
lea ax, qword ptr [rbx + rdx + 32397]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
add bl, -43 # instrumentation
adc ax, 6
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rdx
add al, 115 # instrumentation
and rdi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rdi], eax
add al, 34 # instrumentation
and rdi, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
add bl, 4 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdx]
cmovno di, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
