.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], bl
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
jp .bb_0.2
jmp .exit_0
.bb_0.2:
cmp cl, dil
sbb dl, cl
xor dil, -37
add dil, dl
cmovle rcx, rbx
xchg esi, ebx
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
