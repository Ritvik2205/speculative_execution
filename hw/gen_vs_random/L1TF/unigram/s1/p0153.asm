.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
btc edx, edx
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btr qword ptr [r14 + rsi], rbx
and rdi, 71
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], esi
sbb cx, 16
jmp .bb_0.1
.bb_0.1:
cmp dl, dl
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
and rax, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rax]
dec dil
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rsi
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], al
xor dl, 9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
