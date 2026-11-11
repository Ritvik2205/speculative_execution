.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 40
sub al, cl
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], 53
jb .bb_0.1
jmp .exit_0
.bb_0.1:
or ebx, -124
and dil, dil
dec cl
cmp cl, sil
and rdx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rdx]
cmp di, 21
and rax, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dl
or al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
