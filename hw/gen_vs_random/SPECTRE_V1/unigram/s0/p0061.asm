.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rdi]
mul cl
test ax, -32457
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], esi
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], eax
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], bx
and rdx, 0b1111111111111 # instrumentation
not word ptr [r14 + rdx]
add bl, -57 # instrumentation
and rax, 0b1111111111111 # instrumentation
movzx rcx, byte ptr [r14 + rax]
add dl, 117 # instrumentation
sbb rdx, rcx
and rsi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rsi]
lea rsi, qword ptr [rax + rax + 24]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], -37
and rcx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rcx]
mul rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
