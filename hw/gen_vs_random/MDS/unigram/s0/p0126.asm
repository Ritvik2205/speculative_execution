.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rax, 52
and rax, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
test dil, 46
and rax, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rax]
btr dx, ax
and rax, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rax]
or ax, 85
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], di
btr rsi, 146
and rbx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
xor cl, -13
xor al, dl
and rsi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], ax
and cl, dl
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
test sil, dl
cmovnle edx, eax
test rcx, -613256812
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
