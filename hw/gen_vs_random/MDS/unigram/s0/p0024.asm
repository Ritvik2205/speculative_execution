.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 5
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
and rax, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
cmovo rbx, rdx
btr dx, dx
or bx, 32
and rdi, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rdi]
and al, -8 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rbx]
cmovnl rcx, rax
and rax, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rax], eax
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], eax
and rax, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 4
and rsi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rsi], dx
and dx, di
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdi
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], si
cmovnz esi, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
