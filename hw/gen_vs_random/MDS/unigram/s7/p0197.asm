.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp si, bx
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
and cl, bl
and cl, 114 # instrumentation
cmovz cx, ax
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 99
and cl, 84 # instrumentation
cmovbe cx, dx
cmovs rdx, rsi
test dl, 27
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], dx
xor ax, -1005
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], al
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
and rdx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rdx]
or ax, 0b1000000000000000 # instrumentation
bsf cx, ax
and rdi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rdi
or bx, 81
and rbx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
