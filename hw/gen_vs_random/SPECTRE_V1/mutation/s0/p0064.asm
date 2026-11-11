.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -75
and rcx, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rcx]
cmovb rbx, rsi
movzx edi, di
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
add dx, -103
add rax, 913062684
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rbx]
neg al
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
xor dl, dl
cmp eax, -563371897
and si, cx
and rax, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rax]
add rax, 913062684
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
