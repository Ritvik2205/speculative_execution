.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], cl
dec ebx
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], 2
add bl, -47 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], edx
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], 53
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rsi]
lea dx, qword ptr [rax + rdx]
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 6
add dl, -127 # instrumentation
movzx edx, al
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 4
and rax, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rax]
dec rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
