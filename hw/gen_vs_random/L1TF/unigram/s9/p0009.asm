.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdx]
add rsi, 15
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ecx
lea dx, qword ptr [rcx + rcx + 43]
setnle bl
and rsi, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], eax
add cl, 40 # instrumentation
cmovbe si, di
or rdx, -22
add di, 57
setb al
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], dil
and rdi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rdi]
movzx dx, dil
xor dil, -42
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
