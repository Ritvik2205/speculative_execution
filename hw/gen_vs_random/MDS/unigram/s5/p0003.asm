.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], cx
and rax, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 0
btc rsi, 105
and bl, 34 # instrumentation
cmovno ebx, edx
xor bl, -88
test al, al
cmovp eax, esi
jmp .bb_0.1
.bb_0.1:
btc rcx, rsi
and rbx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rbx]
and cl, 125 # instrumentation
cmovo cx, dx
and dil, dil
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 57
cmovnb si, bx
test cx, di
bt si, dx
and rbx, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
