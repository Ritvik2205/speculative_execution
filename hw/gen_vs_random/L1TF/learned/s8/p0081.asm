.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, dl
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, edi
test dil, -126
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
lea di, qword ptr [rdi]
inc eax
lea rsi, qword ptr [rdx + rsi + 82]
jmp .bb_0.2
.bb_0.2:
setno cl
xor dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
