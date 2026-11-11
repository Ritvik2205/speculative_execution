.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 31143
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
or dl, bl
xor cl, dil
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rax, 498847670
and rsi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
or cl, 39
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
test rdi, 67
and rsi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rsi]
or dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
