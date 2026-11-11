.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz ax, dx
or ax, 0b1000000000000000 # instrumentation
bsf si, ax
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 34
test rax, -648054011
bt bx, si
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -1734
and rdx, 14
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
bts rbx, 25
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], 99
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
and bl, 127 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], -122
cmovz bx, ax
and rbx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rbx]
test al, 22
cmovnbe rsi, rsi
and rax, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], -27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
