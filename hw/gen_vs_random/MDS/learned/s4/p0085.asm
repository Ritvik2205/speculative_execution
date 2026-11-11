.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
not al
and bl, 68
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
and sil, -9
and bx, 41
test cl, 0
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -1734
xor dil, 81
xor al, dil
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
or sil, -49
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -834948525
test edx, -372470678
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
