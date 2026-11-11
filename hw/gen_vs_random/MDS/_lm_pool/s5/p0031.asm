.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dil
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
test al, bl
and edi, 23
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -884248205
bt ax, si
and al, sil
and rax, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rax]
test eax, 424329527
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 5
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
test ecx, -1843375753
test bl, 65
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 5
or dl, -21
cmovnp rdi, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
