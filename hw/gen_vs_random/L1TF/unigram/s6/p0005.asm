.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rdi], bx
and rbx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 4
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], bl
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], dx
cmovns rcx, rcx
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], 65
sub bl, dil
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rax]
adc al, -61
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 66
mov dil, al
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], sil
and rsi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rsi], 10
lea ax, qword ptr [rcx + rcx + 69]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
