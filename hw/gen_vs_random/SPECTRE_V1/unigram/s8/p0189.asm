.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea cx, qword ptr [rbx + rax]
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rbx], edx
lea rax, qword ptr [rdx + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 32
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 3
mov dil, cl
cmp ecx, ebx
and rdi, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdi]
sub bl, -19
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 43
adc al, -82
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
