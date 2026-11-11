.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 22
and ax, -122
bt cx, ax
and rax, 452940266
and sil, al
jmp .bb_0.1
.bb_0.1:
and dl, -73
and rax, 627810357
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rcx
xor rbx, 89
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
btr si, bx
or eax, 678817098
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
test edx, -1561252782
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
