.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovns eax, edx
or dil, dil
cmovz rax, rcx
test al, -59
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 78
and rdi, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rdi]
bt esi, esi
cmovns rbx, rdx
jmp .bb_0.1
.bb_0.1:
or cl, bl
and rdi, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rdi]
or dl, -18
and dl, -78 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rsi
cmovnb rbx, rbx
xor rcx, 73
or al, al
cmovbe ax, ax
and rbx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rbx], si
and rcx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], edi
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 81
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
