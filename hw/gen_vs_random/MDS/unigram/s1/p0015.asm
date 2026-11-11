.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
and rsi, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rsi]
and cl, 11 # instrumentation
cmovp edi, edx
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -45
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -1734
xor dl, al
cmovnle rbx, rax
and rax, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rax]
and dl, -19 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 87
bt rdx, rcx
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 79
and rsi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], dx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
or eax, 678817098
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 0
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], al
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
