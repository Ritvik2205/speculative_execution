.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], si
btr rax, 56
or edi, ebx
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 80
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 39
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, eax
and rcx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], si
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edi
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -232610484
and cl, 49 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], cx
btc ebx, ebx
test dl, sil
cmovbe dx, di
cmovs edx, esi
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], edx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 18
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], ebx
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
