.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dil, -32
xchg eax, ecx
and eax, 933895314
and rdx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rdx], cx
cmovb rbx, rsi
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], esi
and rax, rdi
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rcx]
mov dl, 25
test rbx, 74
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], 48
movsx ecx, cx
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -79
add edx, 64
and bl, cl
cmp sil, 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
