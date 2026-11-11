.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 2
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 99
cmovle dx, cx
and rcx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rcx]
and dl, cl
xor dil, -70
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
and rdx, 88
test rcx, rsi
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 1
cmovo ecx, eax
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx]
and bl, 116 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rbx]
bt edi, ecx
or eax, -900576213
test si, bx
test bx, 4954
or al, cl
cmovns rbx, rax
and rcx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
