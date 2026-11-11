.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rdx], si
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 6
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 80
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rsi], si
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 120
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], edx
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], 12
xor cl, 15
and cl, 21 # instrumentation
cmovb dx, cx
and rcx, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rcx]
test bl, -9
and al, cl
and rcx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], dx
cmovb rbx, rbx
and rcx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rcx], esi
cmovb ecx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
