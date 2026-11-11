.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, dil
and rdx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rdx]
and bl, al
test edi, 62
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
add al, 65 # instrumentation
cmovo rax, rcx
lea dx, qword ptr [rcx + rbx + 49]
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
test ecx, 41
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 7
cmp sil, -11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
