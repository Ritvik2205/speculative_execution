.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rsi]
and cl, bl
and rdx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -57
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 83
btc rax, rdx
cmovbe bx, di
and rdx, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 97
cmovz edi, esi
bt ax, di
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ebx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
and rsi, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rsi]
test rsi, 74
cmovnp rbx, rsi
and al, -23 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
