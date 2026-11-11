.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 121 # instrumentation
and rsi, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], ecx
dec ax
xor ebx, 83
and rax, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rax]
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], 46
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
add bl, 78 # instrumentation
adc dx, 2
and rcx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rcx]
and di, 79
and rax, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
