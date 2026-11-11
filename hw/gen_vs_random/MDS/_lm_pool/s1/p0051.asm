.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
and ebx, 28
xor al, 8
and rdx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdx]
xor sil, 27
test cl, -86
or dil, -78
and bx, 44
xor bl, -102
bt si, ax
not cl
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
test cl, cl
and rbx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], di
or al, -58
test al, -7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
