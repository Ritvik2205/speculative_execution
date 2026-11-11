.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 67 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rax]
and dl, dl
add al, cl
test ax, 636
and rsi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rsi]
and di, 85
cmovle rdx, rbx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rax]
lea ax, qword ptr [rcx + rax + 13]
sbb dl, bl
and rcx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
