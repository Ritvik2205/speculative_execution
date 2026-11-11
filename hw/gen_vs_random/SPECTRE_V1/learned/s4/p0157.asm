.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -123 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 1
add cl, -122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rcx]
movzx cx, sil
or ax, si
and rax, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rax]
or dl, bl
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
cmp rdi, rcx
and bl, 12 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rbx]
dec rdx
add bl, -107 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rax]
and al, -119
and rcx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
