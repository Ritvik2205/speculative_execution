.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rax, -2096157586
mov ax, 31802
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
test eax, -251558852
test edi, 2142010790
cmp al, 114
xchg ecx, esi
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dil
or si, 85
dec dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
