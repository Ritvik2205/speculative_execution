.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, al
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 47
test ax, 18697
and al, dl
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 28
and rax, 79
or cl, cl
or sil, bl
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
or al, 24
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], cl
or dil, al
btr rax, 56
and rbx, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
