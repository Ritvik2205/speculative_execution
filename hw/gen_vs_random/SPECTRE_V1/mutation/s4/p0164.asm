.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rcx]
add rax, 913062684
movzx edi, di
cmovb rbx, rsi
test al, 84
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
cmp eax, -240917296
and si, cx
add rax, -845342150
and rax, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rax]
neg al
jmp .bb_0.2
.bb_0.2:
xchg al, cl
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rbx
bt ecx, ebx
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], si
setnp dl
and rdi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], bx
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
