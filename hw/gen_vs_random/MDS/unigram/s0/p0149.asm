.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rsi, rdx
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 75
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 22
jmp .bb_0.1
.bb_0.1:
xor dl, dil
and rcx, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 6
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 4
and rdi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rdi]
xor bl, 2
xor al, sil
cmovnle esi, ebx
and rdx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rdx]
cmovnz ecx, eax
and rdi, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdi]
or cx, 0b1000000000000000 # instrumentation
bsf ax, cx
and al, 4 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rbx]
cmovo rbx, rax
xor bl, sil
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rdi
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
