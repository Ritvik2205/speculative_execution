.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 38
and rcx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rcx]
xor dl, -91
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rbx]
or dl, dil
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 10
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], dl
setnle sil
and rdi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
add dil, 34 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdi], 11
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 70
setz cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
