.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], cx
xor dl, cl
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], cx
cmovnl ecx, ecx
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], eax
and rax, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rax]
btc cx, ax
and rbx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rbx]
bt rsi, rsi
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rdx
and rbx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -2966447
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rdi
xor sil, sil
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
and rsi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 2
and rax, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rax]
xor edx, 17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
