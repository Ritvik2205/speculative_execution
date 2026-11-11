.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
and bl, 27 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rdi]
xor dl, -43
and rax, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rax]
and dl, 113 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rcx]
or bx, 48
bts rax, rbx
cmovns rcx, rax
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rcx]
and dl, -11 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rcx]
and al, 6 # instrumentation
and rax, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], edi
and bl, -89 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rbx]
and al, -72 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
test rsi, 21
bt cx, di
and rsi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], dx
cmovnb eax, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
