.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 70
and rbx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rax]
sub al, cl
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdx], eax
bt ax, 3
lea rdi, qword ptr [rdi + rbx + 45]
and rax, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rax]
xor di, 82
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
cmovnbe rdx, rdi
and rdx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rdx]
cmovp bx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
