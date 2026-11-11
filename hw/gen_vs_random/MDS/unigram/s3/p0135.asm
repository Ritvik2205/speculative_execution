.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
and bl, 20 # instrumentation
cmovo edi, ecx
or sil, -78
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 54
cmovp bx, ax
and rcx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rcx
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi]
and bl, 107 # instrumentation
cmovbe bx, cx
cmovnbe eax, ebx
and rax, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rax
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], -68
bt esi, 3
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 28
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -6
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
