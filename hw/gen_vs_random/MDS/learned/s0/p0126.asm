.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -115 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
movzx di, dil
xor rdi, rdx
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
and rsi, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rsi]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edi
cmovns rax, rcx
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rax], edx
bt ax, di
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 69
and rax, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rax]
bt eax, 21
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rax
test ecx, 1044879383
adc cl, 41
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 11
and rsi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rsi]
and dl, 84 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btr qword ptr [r14 + rax], rbx
or rax, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
