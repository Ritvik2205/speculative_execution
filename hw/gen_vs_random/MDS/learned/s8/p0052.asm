.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dil
and rcx, -63
xor sil, bl
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], edx
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
or cl, 7
or al, 16
or dl, -31
jmp .bb_0.1
.bb_0.1:
test al, bl
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
and bx, 97
test al, cl
test dl, al
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
