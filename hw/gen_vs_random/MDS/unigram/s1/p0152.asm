.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 58
cmovnb si, si
and rcx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], edi
xor esi, 30
bt eax, 68
bt ax, 171
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
and cx, si
cmovo dx, dx
and rsi, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
cmovb ebx, esi
and rcx, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rcx]
and al, 33 # instrumentation
cmovnle edi, esi
and rdi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], edx
cmovbe rcx, rax
cmovnb rsi, rsi
and cl, -81 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], bl
xor dl, al
cmovnl esi, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
