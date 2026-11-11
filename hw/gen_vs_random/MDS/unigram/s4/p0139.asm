.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, cl
cmovnl ebx, ecx
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rax
cmovns cx, si
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
and dx, 60
and rdi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdi], 21
and rsi, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 2
xor al, 115
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and rbx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 2
cmovnz ecx, edx
or ax, -7150
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rdx
or eax, 678817098
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
