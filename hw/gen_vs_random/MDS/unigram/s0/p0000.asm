.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -49 # instrumentation
cmovno ax, di
and rcx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rcx]
bts rcx, rdi
and rax, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rax]
cmovb cx, cx
btc ax, 77
and rsi, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rsi]
xor ecx, 56
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rax]
cmovnb dx, di
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 6
bt edi, ecx
test al, -59
and ax, 28417
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 0
cmovp rdi, rax
and dl, -33 # instrumentation
cmovns rcx, rcx
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], ax
and rdi, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rdi]
test ax, 5320
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
