.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
and rax, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rsi]
test al, al
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], dl
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 1
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 80
and rsi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rsi]
cmovbe dx, cx
and bl, 68
and cl, 118 # instrumentation
cmovp ebx, ecx
not rax
and al, 61 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rax]
btc rsi, 80
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 33
or cl, dl
and rax, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
