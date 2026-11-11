.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, dil
add cl, 40 # instrumentation
cmovbe bx, di
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 33
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rcx]
test cl, bl
add dl, 97 # instrumentation
cmovnbe edx, eax
neg eax
and rdx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdx]
inc rbx
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, ecx
lea rax, qword ptr [rdi]
and rsi, 0b1111111111111 # instrumentation
add si, word ptr [r14 + rsi]
lea si, qword ptr [rsi + rdx]
and rcx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
