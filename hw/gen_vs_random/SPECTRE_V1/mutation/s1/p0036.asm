.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rcx]
add rax, 977059290
movzx edi, di
cmovb rbx, rsi
test al, 40
add dx, -103
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
loopne .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rax]
xor dl, dl
cmp eax, 692647572
and si, cx
add rax, -704585563
and rax, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rax]
neg al
jmp .bb_0.2
.bb_0.2:
add dl, -86 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdi]
xor dl, bl
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], cx
mov cl, al
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rax
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], bl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
