.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 19 # instrumentation
setnz sil
and rax, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rax]
add bl, 107 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rbx]
sub rdx, rsi
nop
and rsi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rsi], di
and rdi, 73
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rcx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
cmovnle edi, esi
and rcx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rsi
sbb cl, sil
and rdx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdx], 68
xchg sil, al
and rsi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
