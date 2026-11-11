.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
bts rcx, rbx
and rcx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], bx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdx]
test al, 66
and ebx, 21
jmp .bb_0.2
.bb_0.2:
and eax, 943733866
btr bx, dx
xor sil, cl
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
or rsi, 70
xor cl, dil
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
and rsi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 17
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
