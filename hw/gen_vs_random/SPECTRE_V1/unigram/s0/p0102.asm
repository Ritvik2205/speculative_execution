.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 2
test dx, 83
sub sil, -18
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
cmovnle di, si
inc cl
and rbx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btc word ptr [r14 + rcx], di
sub bx, cx
or cx, 0b1000000000000000 # instrumentation
bsf di, cx
sbb dil, bl
xchg al, al
and rcx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rax], bx
imul cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
