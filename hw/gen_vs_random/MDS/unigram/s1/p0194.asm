.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -81 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rax]
and si, 7
test cl, 59
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 85
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 6
or sil, -8
and rbx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rdi]
and bl, -72 # instrumentation
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 30
and rbx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], di
and bl, -34 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rdi]
and dl, 107 # instrumentation
cmovs edx, ebx
and dl, -7
and rcx, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 60
bts rdx, 255
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], eax
test cl, 10
or rax, -2043376621
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
