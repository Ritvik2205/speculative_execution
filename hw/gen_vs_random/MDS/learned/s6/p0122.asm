.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
jmp .bb_0.1
.bb_0.1:
or dl, sil
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 30
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], cl
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 51
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
jmp .bb_0.4
.bb_0.4:
test al, 91
test dil, dl
or al, -61
and rdx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdx]
test eax, -409834435
and rax, 41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
