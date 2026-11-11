.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], eax
cmovnz esi, eax
and rax, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rcx]
movzx rsi, si
cbw
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
movsx rsi, si
add bl, 124 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rcx]
add dl, 21 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rbx]
add dl, -95 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdx]
add bl, 119 # instrumentation
cmovle bx, di
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
