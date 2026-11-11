.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, 42
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
or dil, dl
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and dil, cl
and rbx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
test sil, 41
and sil, sil
xor di, 93
or al, al
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
or di, 82
and sil, -69
test edx, -372470678
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
