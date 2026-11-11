.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, -104 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 27
and al, -68
jmp .bb_0.1
.bb_0.1:
test cl, 76
add cl, 88
and esi, 54
jmp .bb_0.2
.bb_0.2:
test bl, 45
lea bx, qword ptr [rdx]
jmp .bb_0.3
.bb_0.3:
add bl, 62 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
