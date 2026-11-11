.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rsi
and rdx, 37
and rbx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], esi
cmovb bx, bx
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -3918
test dl, 9
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], -113
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], ax
cmovnz ecx, edi
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
and eax, -574348013
and rsi, 84
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rdx
xor dx, 45
and rdi, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rdi]
and dil, -48 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
test sil, bl
and rcx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
