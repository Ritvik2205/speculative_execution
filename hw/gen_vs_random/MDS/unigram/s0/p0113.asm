.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], ecx
test rax, -363019044
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rbx
cmovnb esi, ebx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 33
or si, 94
and rbx, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 4
and rdx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdx]
xor al, -4
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 25
and cl, -19
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rax]
xor bl, -27
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], rcx
or sil, al
or rax, -1523798580
or dil, bl
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
