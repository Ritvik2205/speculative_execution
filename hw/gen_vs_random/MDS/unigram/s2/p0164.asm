.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 93
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rdx]
xor sil, 94
and dl, -67 # instrumentation
cmovnle rsi, rdx
btc rbx, 35
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], sil
and dl, 93 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rsi]
cmovle bx, si
test al, 91
or ebx, esi
cmovnb rbx, rdx
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
test ax, 4430
or ebx, -15
cmovnbe ecx, eax
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], eax
and rsi, 50
test dil, -80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
