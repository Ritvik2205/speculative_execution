.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
add dx, -103
movzx edi, di
test al, -99
and rcx, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rcx]
add rax, -845342150
cmovb rbx, rsi
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rax]
neg al
xor dl, dl
and si, cx
and rax, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rax]
add rax, 913062684
cmp eax, 100
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
