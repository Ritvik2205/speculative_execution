.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnp eax, ebx
cmovnz edx, ecx
and rdi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], cx
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], ax
and dil, 22
xor ecx, 12
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
test cl, 82
and bl, -3 # instrumentation
cmovnb bx, si
test dil, -72
cmovo esi, ebx
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], -116
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 3
cmovp eax, ecx
btc rbx, rdx
xor bl, 2
and rdx, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdx]
or al, al
and rcx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
