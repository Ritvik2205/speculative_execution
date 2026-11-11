.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 74
sbb cx, 61
or edi, 1 # instrumentation
and edx, edi # instrumentation
shr edx, 1 # instrumentation
div edi
jmp .bb_0.1
.bb_0.1:
btc bx, ax
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 26
and rax, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rax]
and rcx, 48
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rcx
cmovz rcx, rsi
add bl, 107 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], 84
add dx, 82
and al, cl
and rbx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rbx]
add bl, -45 # instrumentation
cmovs rdi, rdi
or dil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
