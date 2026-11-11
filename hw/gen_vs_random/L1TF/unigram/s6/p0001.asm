.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub ecx, ecx
or dx, 55
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], al
inc cx
and rbx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rbx]
add bl, -36 # instrumentation
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], ebx
and rcx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdx]
lea rbx, qword ptr [rsi + rax]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rcx]
setz dil
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 35
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], cl
and rax, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
