.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 3
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], 51
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdi
and cx, 51
sbb bl, 79
lea cx, qword ptr [rdi]
add cl, -80 # instrumentation
and rax, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rdx]
loope .bb_0.1
jmp .exit_0
.bb_0.1:
setnb al
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], 85
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dl
add dl, 38 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], rbx
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi]
cmovb rbx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
