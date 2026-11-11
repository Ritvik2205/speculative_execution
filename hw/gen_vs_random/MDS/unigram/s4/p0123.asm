.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or si, 16
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rsi
test cx, 78
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 19
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], -84
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 25
bts rsi, 89
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 3
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rbx]
cmovp edi, edi
or dx, 70
cmovo bx, bx
and rax, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 49
and al, -56 # instrumentation
cmovl rbx, rdx
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
or sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
