.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 3
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rdi
test al, 34
and rbx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], rdi
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rsi], di
and rax, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rax]
lea ax, qword ptr [rdi + rsi + 14]
adc sil, al
movsx rbx, si
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 28
test ax, 636
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rdx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rax]
mul dl
cmp bl, -114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
