.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ax, -23697
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dil
and sil, -69
and dil, dil
jmp .bb_0.1
.bb_0.1:
or di, 61
jmp .bb_0.2
.bb_0.2:
or ax, -20176
and rdi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
or al, -61
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
