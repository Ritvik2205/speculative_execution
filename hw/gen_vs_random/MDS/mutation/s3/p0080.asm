.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -128 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rcx
btr edx, esi
and rcx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rcx
and rdi, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rdi]
bts rbx, rax
and rdx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], esi
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 118
and rbx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rbx]
cmovnb rdx, rcx
or dl, -21
and rcx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rcx]
or cl, al
and rdx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rsi]
bt rax, rdi
or eax, 678817098
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
