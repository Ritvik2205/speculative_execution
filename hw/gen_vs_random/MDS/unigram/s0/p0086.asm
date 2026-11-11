.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rax]
xor cx, di
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf esi, edx
and dl, -1 # instrumentation
cmovnb dx, cx
and al, -56 # instrumentation
cmovl rbx, rsi
cmovns si, cx
bts rax, 149
xor edx, 21
or al, -48
and rax, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 5
or bl, 84
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 3
or sil, al
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], sil
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 3
and cl, 48 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rbx]
cmovbe si, si
and rbx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rbx]
test dx, 69
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
