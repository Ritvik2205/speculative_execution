.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul eax
add al, 27 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rsi]
cmovl edi, edi
or ecx, 77
add dil, 24 # instrumentation
lea rdi, qword ptr [rdi]
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 5
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
jno .bb_0.1
jmp .exit_0
.bb_0.1:
test ebx, eax
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], al
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], cl
and rcx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rcx], -93
and rdi, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdi], 95
inc dl
or di, 0b1000000000000000 # instrumentation
bsf dx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
