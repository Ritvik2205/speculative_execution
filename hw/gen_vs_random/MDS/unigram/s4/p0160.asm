.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, 48
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 5
not bl
and bl, -62 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
and rdx, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -48
and cx, -2
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
test dil, 46
and rcx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rcx]
not rdx
and rdx, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rbx]
test cl, 91
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rsi]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf esi, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
