.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
btc edi, edi
and rax, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 4
or rbx, 18
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], -8408
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], edx
and rcx, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
and ax, bx
and rdi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], rcx
and rbx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rdx]
xor cl, al
lea edi, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
