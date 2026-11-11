.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rdx]
xor cl, dl
cmp cl, -89
cmovle rsi, rbx
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], 122
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], cl
or dx, 0b1000000000000000 # instrumentation
bsf di, dx
btc cx, dx
and rdx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 27
and rax, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rax]
lea eax, qword ptr [rsi + rdi + 2]
and rdx, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rdx]
or bl, 114
sub si, ax
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
