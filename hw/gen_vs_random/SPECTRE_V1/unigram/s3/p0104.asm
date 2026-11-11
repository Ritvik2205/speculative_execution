.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], edx
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ebx
add eax, -1174744897
add al, 36 # instrumentation
cmovnp rbx, rdi
xchg rbx, rax
and rdx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdx]
mov sil, dil
setno dil
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rsi], rdi
adc bl, dil
cmp edx, 44
jo .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rsi
add al, 87 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rax]
test dil, -116
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
