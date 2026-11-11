.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, 27
bts bx, dx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], 73
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
and dl, 8 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 96
and rsi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rax]
test sil, cl
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 50
and rbx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rbx]
or di, 0b1000000000000000 # instrumentation
bsf ax, di
and edi, 23
and rsi, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rdi]
and cl, dl
btr ecx, 80
cmovnbe rdi, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
