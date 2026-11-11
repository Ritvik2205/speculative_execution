.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], ax
lea rbx, qword ptr [rsi + rcx]
add al, 124 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rax]
setno al
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
add cx, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], cl
and rcx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 61
mul dil
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], bl
and rcx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], 64
sbb bl, cl
or dil, 80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
