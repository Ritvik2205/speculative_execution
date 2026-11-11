.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rsi]
and si, -121
and rdx, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rdx]
and dil, bl
test cl, 54
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
or ax, -14271
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
and rbx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rbx]
bts ax, 22
or eax, 678817098
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
xor dil, 8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
