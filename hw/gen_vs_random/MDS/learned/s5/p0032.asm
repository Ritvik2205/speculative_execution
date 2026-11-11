.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, -52
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
xor dl, sil
test dl, 27
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 2
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
or cx, 49
test ecx, -1843375753
or al, bl
test al, -7
test al, bl
and ax, -16061
and rdx, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rdx]
and rax, 1886208862
jmp .bb_0.1
.bb_0.1:
test bl, 65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
