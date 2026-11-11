.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test di, dx
and rbx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rax]
and bl, 68
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rax
test eax, 298249463
test rcx, -613256812
or bl, -54
xor sil, -14
jmp .bb_0.1
.bb_0.1:
and bx, 3
and al, -103
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 63
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
xor bx, 69
bt di, cx
xor bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
