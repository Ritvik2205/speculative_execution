.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -10 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
btr rsi, rdi
bts rbx, 25
and rcx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rcx]
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rbx
btc rsi, 80
btr cx, 136
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], -32
cmovl eax, edx
jmp .bb_0.1
.bb_0.1:
test eax, -409834435
btc esi, ebx
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], -93
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], si
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 3
and rdx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdx]
cmovz edx, edx
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 4
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rsi], si
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 0
jmp .bb_0.2
.bb_0.2:
and bl, -99 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rcx], ecx
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
or rax, 302048971
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
bt cx, bx
and al, -14 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rax]
cmovno rbx, rdi
and rbx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 8639
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rcx
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rax
cmovnle esi, eax
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], -12
cmovl rsi, rsi
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], -53
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], di
and rsi, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
