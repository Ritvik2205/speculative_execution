.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
and al, -68 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], rdi
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 1
cmovnbe ecx, esi
and rdi, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rdi]
btc rdi, rax
bts rax, rsi
jmp .bb_0.1
.bb_0.1:
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rdx
and bl, 49 # instrumentation
cmovp rsi, rbx
and rbx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], di
and cl, -40 # instrumentation
cmovle di, cx
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rcx
cmovno cx, dx
and rax, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], cx
and rbx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
