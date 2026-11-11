.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rdx], ebx
xor al, 34
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 0
and dl, -59 # instrumentation
cmovbe ax, si
and rax, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rcx]
xor ax, -6793
jmp .bb_0.1
.bb_0.1:
test dl, -95
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], edi
cmovnb di, cx
and rdx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], cx
and bl, 16 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], bx
and rax, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rax]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, edx
and cl, -13 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
test dil, -80
and rax, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -55
and rcx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rcx]
and al, 87
cmovnbe edx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
