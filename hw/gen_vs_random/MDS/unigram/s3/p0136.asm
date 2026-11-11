.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ecx, 8
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], 105
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 95
and di, dx
xor bl, -27
and rdx, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rdx]
cmovnbe bx, si
or rdx, -48
and rax, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rax]
xor ax, 23633
cmovnbe cx, dx
or dl, 51
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 18
cmovp rbx, rcx
and dx, 60
and cl, 11 # instrumentation
cmovp ecx, edi
test cl, -86
xor di, -83
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
bts di, 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
