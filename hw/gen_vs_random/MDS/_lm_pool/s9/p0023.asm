.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 3
and sil, -9
and rbx, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rbx]
xor bl, cl
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], cx
inc dl
or al, bl
and cx, -2
jmp .bb_0.1
.bb_0.1:
test cl, 91
or rbx, -77
bt dx, cx
xor rcx, -2
or al, 25
and rcx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rcx]
test al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
