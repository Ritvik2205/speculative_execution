.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr di, di
bts rcx, rdx
or sil, al
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btr qword ptr [r14 + rbx], rdx
bt dx, ax
and rbx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], edi
and rbx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 15748
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], al
and dx, bx
and rbx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdi
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rcx
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 2
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
and rdi, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rsi], bx
and bl, 84 # instrumentation
cmovbe bx, di
cmovz dx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
