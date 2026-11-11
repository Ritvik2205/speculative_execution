.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, 91
xor bl, dl
and rdi, 24
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 6
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], ebx
or al, 74
xor dl, cl
test dl, 27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
