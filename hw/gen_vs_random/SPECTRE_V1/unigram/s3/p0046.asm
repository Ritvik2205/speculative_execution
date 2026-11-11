.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, cl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rsi
mov dl, bl
sbb bl, 7
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 98
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, -105 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rdx]
imul bl
lea rcx, qword ptr [rdx + rcx + 66]
sub sil, bl
mov cl, -98
or dl, 1 # instrumentation
add bl, -47 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rbx]
add cl, -61 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rsi], esi
setnz al
add dl, 63 # instrumentation
cmovl dx, bx
setnbe al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
