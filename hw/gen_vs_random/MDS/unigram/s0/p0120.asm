.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -15
and rdx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], bx
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdx]
cmovo edx, esi
xor cl, 55
cmovb rax, rdi
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
or cx, 39
and rcx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rcx], ax
and rsi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
test rcx, -613256812
btr edx, edi
bts ax, cx
cmovbe rsi, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
