.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rdx, 95
and bl, 116 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rax
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], di
and rdx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rdx]
xor rdi, -9
btc ecx, 87
and sil, dil
cmovns rdx, rdx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
test sil, -55
and cl, -75 # instrumentation
cmovp ecx, ecx
or ax, 127
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], ax
cmovnp di, di
cmovns dx, cx
and rcx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rcx], ax
and rax, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rax]
btr di, di
or al, -22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
