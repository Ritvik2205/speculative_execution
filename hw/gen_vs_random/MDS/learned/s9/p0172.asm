.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 3
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -834948525
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
xor sil, dl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], di
xor dl, 40
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
and si, -121
or ax, 16560
or al, -17
and cl, dl
test sil, cl
jmp .bb_0.2
.bb_0.2:
test cl, 0
cmovnbe rcx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
