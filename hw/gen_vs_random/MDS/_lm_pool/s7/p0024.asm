.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, -26
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
test dil, 46
or dl, -89
btr si, bx
or al, cl
xor sil, cl
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -57
xor dil, -70
or sil, bl
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
and rax, 4
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rbx]
xor sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
