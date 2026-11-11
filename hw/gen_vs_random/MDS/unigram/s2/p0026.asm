.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rdx
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 45
or bl, 73
and dl, al
and rdi, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rdi]
xor sil, 68
or rcx, rax
cmovz rbx, rsi
or al, al
xor dx, si
and dx, 55
or ax, 19243
btc rdx, rcx
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and dx, si
btr rdi, 31
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 4
or cx, 0b1000000000000000 # instrumentation
bsr cx, cx
btc rsi, rcx
and rax, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rax], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
