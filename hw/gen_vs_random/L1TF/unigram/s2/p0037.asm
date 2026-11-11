.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb al, cl
lea eax, qword ptr [rsi]
add dl, 121 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rcx]
cmp eax, eax
and rdx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rbx]
add dl, 91 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rsi]
lea rbx, qword ptr [rsi + rdi]
jmp .bb_0.1
.bb_0.1:
xor bx, 67
and rdi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], ebx
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rbx
and rdx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rdx]
xor ax, -16232
cmovb dx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
