.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ecx, 64
and rcx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rcx], -4
cmp dil, -78
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
mul rcx
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 87
cmovns rdx, rbx
or bx, bx
inc rsi
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], dx
sets sil
sbb al, 104
and rdx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rdx]
xchg ebx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
