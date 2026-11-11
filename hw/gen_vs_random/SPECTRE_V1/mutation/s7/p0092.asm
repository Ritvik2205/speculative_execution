.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rcx]
add dx, -90
cmovb rbx, rsi
add rax, -845342150
test al, 84
movzx edi, di
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
neg al
and rax, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rax]
and si, cx
add rax, 913062684
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
cmp eax, 692647572
and rax, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rbx]
xor dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
