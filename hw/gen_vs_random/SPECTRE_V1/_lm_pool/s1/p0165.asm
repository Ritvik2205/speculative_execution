.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rbx
cmp ecx, 9
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rbx]
lea rsi, qword ptr [rax]
and rsi, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rsi]
setno dl
lea rdi, qword ptr [rcx + rcx + 92]
lea edi, qword ptr [rdx + rdi + 48234]
xchg dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
