.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rcx]
inc rdi
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 31
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -88
inc edx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
and rdi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rdi], edx
jmp .bb_0.1
.bb_0.1:
or di, 97
cmovbe eax, ecx
or di, 94
cmovl rsi, rcx
and rsi, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rcx]
mov si, 32553
and rsi, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rsi]
or si, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
