.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], edx
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rdx
and rdi, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], ebx
add al, -65
cmovnz di, ax
lea si, qword ptr [rbx + rsi + 54]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rax]
lea rax, qword ptr [rsi]
and rbx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rbx]
not dil
and rax, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rax]
cmovl ebx, ebx
setns cl
mov rcx, 30
and rdi, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
