.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ax, 0b1000000000000000 # instrumentation
bsr ax, ax
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], ebx
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
and rcx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rcx], cx
and rax, rax
btc si, di
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
and al, 17 # instrumentation
cmovnp ecx, esi
bt bx, cx
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 28
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
or dil, -41
and dil, -62
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rcx]
or ax, 0b1000000000000000 # instrumentation
bsr bx, ax
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
and dl, 18 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rcx]
and cl, -23 # instrumentation
cmovno eax, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
