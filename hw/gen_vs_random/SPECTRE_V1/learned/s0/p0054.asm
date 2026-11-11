.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 67 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 3
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
bt eax, 78
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 76
cmp dil, dl
sbb eax, 125
and dl, -92
and dl, -92
jb .bb_0.2
jmp .exit_0
.bb_0.2:
add sil, 2
and rbx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rbx]
dec cl
sub al, -82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
