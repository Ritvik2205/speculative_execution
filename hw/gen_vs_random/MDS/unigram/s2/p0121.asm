.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rsi, rbx
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], eax
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rcx]
btc ecx, ecx
cmovns esi, eax
xor sil, -15
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], cx
and bl, 116 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rdx]
bts si, dx
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 7
and dil, -39
and rdx, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rdx]
or dil, 12
xor dl, sil
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], esi
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], 119
and rdi, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rdi]
xor bx, 46
and rdi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rbx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
