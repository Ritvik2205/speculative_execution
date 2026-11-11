.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rsi]
bt di, 52
and bx, 55
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 3
or ax, 30524
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
btc ax, di
xor cl, dl
and rcx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rcx]
cmovnbe rdi, rcx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
cmovnb cx, di
and rbx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rbx]
and dl, -81 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rcx]
xor dil, 81
cmovz ebx, edi
btr rdi, 129
and rcx, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rcx]
or cx, -42
btr eax, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
