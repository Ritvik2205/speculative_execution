.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb rbx, rsi
movzx edi, di
add rax, 913062684
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
and rcx, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rcx]
test al, 84
add dx, -90
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rbx]
cmp eax, -240917296
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
and rax, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rax]
and si, cx
xor dl, dl
neg al
and rax, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rax]
add rax, 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
