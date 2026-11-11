.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, dl
xor dil, -3
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
and rdx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdx]
and cl, bl
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], cx
and si, -121
or al, dl
jmp .bb_0.1
.bb_0.1:
test bl, -9
test cl, 62
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdi
or ax, -7150
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], bl
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
