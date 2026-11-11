.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
xor al, sil
xor dl, -43
and bl, 68
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
not bl
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
xor dl, al
xor bl, -102
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -7
test dl, 9
and cl, -111
xor ax, -16696
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], edi
test rax, -363019044
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
