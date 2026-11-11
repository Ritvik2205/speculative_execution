.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -128 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rcx
btr edx, esi
and rcx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rcx
and rdi, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rdi]
bts rbx, rax
and rdx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], esi
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], di
and bl, -36 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rbx]
cmovp si, dx
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], edi
and rsi, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rsi]
or rdi, 21
cmovbe edx, esi
and rbx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rbx]
or ebx, -104
and rcx, rdx
bts edx, 189
and dl, -41 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdi]
btc bx, 58
xor al, -26
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 6
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ecx
xor rax, -345061362
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
and rcx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rcx]
test al, -7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
