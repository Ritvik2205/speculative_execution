.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rdi]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, eax
imul dl
and rbx, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rbx]
add rsi, -60
and rax, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], 12
and rdi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdi]
lea rax, qword ptr [rax + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rdi]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 59 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rcx]
or cl, -62
or esi, -74
xor edx, 13
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], rbx
and rbx, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
