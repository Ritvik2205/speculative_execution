.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], esi
and bl, -120 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rbx]
or sil, al
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 3898
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], -108
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 62
jmp .bb_0.1
.bb_0.1:
bt dx, si
cmovns rax, rsi
test rdx, 42
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], bx
btr cx, 9
and rcx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 60
xor sil, al
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 67
and rcx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rcx], edi
and rax, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rbx
and rbx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
