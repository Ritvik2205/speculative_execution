.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt ax, cx
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], al
xor esi, 12
or bl, -62
and bl, -120 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rbx]
cmovnz rbx, rsi
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dil
cmovle dx, ax
or eax, -1777347252
and rax, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rax]
btr ax, 193
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], edi
btc rax, rdi
or rdx, -48
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 5
cmovnbe dx, si
test eax, 424329527
btc rdx, rcx
cmovbe eax, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
