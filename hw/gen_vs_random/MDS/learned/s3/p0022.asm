.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 0
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
xor rax, -270810088
and rax, 1886208862
btr esi, ecx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
and rdx, 59
xor dil, dl
or dil, bl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
test al, -81
and ax, 31082
test dil, al
and al, -8
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
