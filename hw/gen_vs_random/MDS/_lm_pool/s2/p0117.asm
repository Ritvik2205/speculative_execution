.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor eax, 1640090871
xor al, 99
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
and sil, sil
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
or si, -12
jmp .bb_0.1
.bb_0.1:
xor bl, -61
xor cl, al
xor sil, cl
test al, -81
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
and cl, 79
and rcx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -3918
test al, dl
and rdx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rdx]
xor rsi, -117
jmp .bb_0.2
.bb_0.2:
test cl, 101
and rax, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
