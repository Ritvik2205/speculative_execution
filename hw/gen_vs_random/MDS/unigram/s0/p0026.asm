.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb bx, di
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 1
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
and rdi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rdi
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], cl
and al, -126 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
btr ecx, eax
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rax
and rax, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rax]
or eax, -900576213
bt rdx, 95
and dl, -41 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 0
and rcx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rcx], bx
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
and bl, al
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 5
and rax, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], -114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
