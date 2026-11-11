.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg edi, eax
and rsi, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rsi]
add al, 10
jb .bb_0.1
jmp .exit_0
.bb_0.1:
or dl, cl
and rax, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], cl
and rbx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], edx
dec al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
