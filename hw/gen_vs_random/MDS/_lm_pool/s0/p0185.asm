.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dx, 65
test al, 127
test dl, al
and rbx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rbx]
or dl, dil
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], cl
xor rbx, 89
and rsi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
and di, 99
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 31143
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 39
and cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
