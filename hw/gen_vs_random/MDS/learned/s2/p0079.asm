.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
and cl, dl
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
xor cl, 55
and rdi, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
xor ax, 23633
or dil, dil
jmp .bb_0.1
.bb_0.1:
xor cl, 24
and ax, -122
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
and al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
