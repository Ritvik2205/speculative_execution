.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], eax
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], cl
mov cx, 6
and rbx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rbx]
xor sil, sil
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], cl
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], rbx
jmp .bb_0.1
.bb_0.1:
cmovnl esi, edx
mov ax, 74
btc rsi, 39
add cl, -84 # instrumentation
xchg rbx, rcx
cmp bl, 3
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rax
and rcx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
