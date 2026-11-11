.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdi
and rax, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rax]
test cl, cl
or sil, dil
btr ecx, eax
jmp .bb_0.1
.bb_0.1:
or rbx, -72
xor dil, -70
test rbx, 19
and sil, 89
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
test al, -7
and dil, -62
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
