.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt eax, 2
and rdx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], esi
cmovp bx, si
bts edx, ebx
xor al, al
or si, 8
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btr qword ptr [r14 + rax], rdx
xor cl, bl
or bx, 0b1000000000000000 # instrumentation
bsr di, bx
test edi, 50
jmp .bb_0.1
.bb_0.1:
and bx, -21
cmovns rbx, rdx
test ecx, 1044879383
and cl, 8
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 97
or cl, 100
and rsi, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rsi]
btc dx, 38
or si, 41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
