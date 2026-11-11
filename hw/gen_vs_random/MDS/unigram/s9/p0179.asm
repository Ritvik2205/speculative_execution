.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rdx
and ax, 13090
or rcx, 54
or rbx, rsi
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
btc rax, rax
test al, 127
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], sil
xor cl, 24
cmovb rbx, rbx
and rdx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], dx
and cl, -14 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rcx]
xor cx, dx
cmovno bx, ax
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 67
and rax, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rax]
or al, sil
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
