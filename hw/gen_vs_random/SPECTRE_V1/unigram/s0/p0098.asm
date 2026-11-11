.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 17
add bl, -108 # instrumentation
sbb al, 66
cmovb si, si
and rdi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdi]
or edi, 1 # instrumentation
and edx, edi # instrumentation
shr edx, 1 # instrumentation
div edi
btc ebx, 29
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
or cl, al
add al, 98 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], sil
add al, 125 # instrumentation
adc al, bl
add cl, -83 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 1
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx], 63
cmovns rdx, rdx
and rsi, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
