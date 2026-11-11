.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, edx
add al, 93
add cl, sil
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
setnz cl
and sil, dl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 97
and rcx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rcx]
cmp dl, -56
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
