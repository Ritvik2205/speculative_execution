.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -43
and rbx, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
test dl, -36
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], -108
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 65
xor ecx, 32
cbw
add cl, -23 # instrumentation
cmovl cx, di
loope .bb_0.1
jmp .exit_0
.bb_0.1:
and al, -54
and rcx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rcx]
movsx bx, dil
setnl al
and rax, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rax]
add cl, 112 # instrumentation
sbb eax, 70
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
