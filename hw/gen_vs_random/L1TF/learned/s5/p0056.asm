.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rax]
add dil, 88
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], bl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
and al, -68
xchg esi, ecx
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
xor sil, cl
not cl
and rdi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
