.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -124 # instrumentation
setnz al
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 7
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], -34
sbb dl, dil
movsx bx, sil
cwde
and rbx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rbx]
setl dil
and rcx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
add al, 87 # instrumentation
cmovo rbx, rsi
cmovnle si, si
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], -16
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 51
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], 47
add edi, 91
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], 80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
