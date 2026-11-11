.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rbx]
bts edx, 189
and cl, -48 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rcx]
and cl, 123 # instrumentation
cmovo bx, cx
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rax], edx
xor dl, dil
bt eax, edx
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 5
or cl, cl
and rbx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rbx]
btr rdx, 64
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 1
cmovnle rsi, rcx
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdx
and rdx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rcx
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
or ax, di
or cl, al
and dl, 37 # instrumentation
cmovnbe bx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
