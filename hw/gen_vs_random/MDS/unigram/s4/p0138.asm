.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
cmovle dx, bx
and rdi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], ax
btc edx, 75
test eax, 158941032
xor al, -19
cmovs rsi, rcx
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
and rdx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rdx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rcx]
or dl, -21
and cl, -13 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdx]
cmovo ax, bx
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 8
test sil, cl
and sil, -15 # instrumentation
cmovnp si, si
and rdx, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rdx]
test dl, dil
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dil
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
