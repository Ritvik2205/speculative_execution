.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], cl
cmp ecx, -45
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
inc sil
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edx
add sil, -6 # instrumentation
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], sil
jp .bb_0.1
jmp .exit_0
.bb_0.1:
bt di, 236
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
cmp ecx, -45
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 15
add dl, 6 # instrumentation
adc rsi, 97
or sil, cl
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ecx
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rsi
setnb dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
