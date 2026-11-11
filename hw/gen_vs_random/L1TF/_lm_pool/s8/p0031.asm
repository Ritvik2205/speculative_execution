.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rax]
sbb al, -4
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
jl .bb_0.2
jmp .exit_0
.bb_0.2:
and dl, sil
xor cl, bl
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rax
inc eax
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
btc si, 45
add al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
