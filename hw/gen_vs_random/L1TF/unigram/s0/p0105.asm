.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 73
xor cl, dl
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rdx]
add al, -1 # instrumentation
nop
cmovo rbx, rbx
imul eax, ecx
xor edx, 91
cmovnle ax, ax
cmovnz rdx, rcx
add dl, 125 # instrumentation
cmovbe rdi, rdi
and rdx, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], -6
add bl, 3 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdx]
adc si, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
