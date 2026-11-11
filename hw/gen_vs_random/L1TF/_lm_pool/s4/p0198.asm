.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
cmp eax, -127
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rax
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
sbb sil, bl
jmp .bb_0.1
.bb_0.1:
and ebx, 108
xchg bl, dil
and rax, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
movzx rbx, byte ptr [r14 + rdi]
and bl, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
