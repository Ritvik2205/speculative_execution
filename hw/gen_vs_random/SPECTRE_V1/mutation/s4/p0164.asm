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
test al, 42
add dx, -90
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
add rax, 6
and rax, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rax]
neg al
jmp .bb_0.2
.bb_0.2:
add al, 107 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rax]
lea dx, qword ptr [rcx + rdi + 45005]
and rcx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rcx]
cmovnbe di, dx
sbb al, 118
and rdx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rsi]
bt bx, di
add dl, -61 # instrumentation
seto dl
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], -31
add bl, bl
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], -113
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
