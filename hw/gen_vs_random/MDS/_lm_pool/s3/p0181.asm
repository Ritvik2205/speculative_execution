.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor eax, 571592471
and rsi, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rsi]
or al, 54
btc cx, ax
and rdx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdx]
or sil, -49
and al, 84
and rax, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -1734
bt dx, ax
xor sil, cl
jmp .bb_0.2
.bb_0.2:
or dil, bl
or sil, dl
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 98
and rax, -2058103810
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
