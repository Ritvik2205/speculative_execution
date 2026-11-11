.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -1 # instrumentation
cmovnb dx, bx
cmovnb dx, si
xor bl, cl
or dl, dil
and rsi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rsi], dx
and al, -37
cmovp esi, esi
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 60
or al, bl
jmp .bb_0.1
.bb_0.1:
lea rsi, qword ptr [rcx + rcx]
jmp .bb_0.2
.bb_0.2:
and bl, -55 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rsi]
xor al, 77
and rsi, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rsi]
or rbx, rdi
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], dx
cmovnz edx, ecx
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 9
cmovz rbx, rdi
mov al, 93
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rdi], cx
sbb sil, 16
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 85
cmp dx, si
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], 37
and bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
