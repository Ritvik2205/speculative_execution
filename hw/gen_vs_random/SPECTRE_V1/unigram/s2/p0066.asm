.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnle al
add cl, 28 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rdx]
lea si, qword ptr [rsi]
and rbx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rbx], 41
or bx, 9
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
sub cl, cl
or sil, 34
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rsi
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], 90
add cl, 87 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], bx
cmp ebx, edx
and rdx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rdx], edi
adc cl, cl
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
