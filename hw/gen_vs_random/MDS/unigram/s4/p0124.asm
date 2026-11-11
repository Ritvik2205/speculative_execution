.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 70
btr rsi, 73
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], -16
cmovo bx, bx
cmovz rax, rdx
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
cmovbe rdx, rax
xor dil, cl
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 30
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edi
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -23
btc ax, 42
cmovp cx, si
and rcx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rcx]
btr bx, 18
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
and dl, -115 # instrumentation
cmovl ax, dx
and rcx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rcx], eax
test esi, 77
and al, 73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
