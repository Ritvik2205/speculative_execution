.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 87 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
xor al, al
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rsi
and rdi, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rdi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
test sil, 97
add di, 44
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 38
dec dl
and rdi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdi]
mov cx, -13260
and rax, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rax]
sub rcx, 13
test al, -126
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
