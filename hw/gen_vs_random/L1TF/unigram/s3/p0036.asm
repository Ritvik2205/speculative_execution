.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc di, cx
and rdx, 0b1111111111111 # instrumentation
movzx esi, byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
add sil, 100 # instrumentation
lea cx, qword ptr [rsi]
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 4
xor bl, cl
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 44
imul rdx, rax
and rax, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rax]
cmovnl rcx, rax
add dil, -7
inc esi
jmp .bb_0.1
.bb_0.1:
bts rdi, rsi
or rsi, 1 # instrumentation
and rdx, rsi # instrumentation
shr rdx, 1 # instrumentation
div rsi
xchg ebx, eax
and rcx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
