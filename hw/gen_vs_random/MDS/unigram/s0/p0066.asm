.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 68 # instrumentation
cmovns bx, ax
and rsi, 98
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rax
bts rdx, 200
test dil, sil
and ax, cx
test esi, 1857129931
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], dx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
bts rbx, 56
bt rax, rdx
and rax, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rax], di
test sil, 41
xor eax, ecx
xor al, 55
cmovs dx, si
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], sil
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rsi]
xor cx, dx
and rsi, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
