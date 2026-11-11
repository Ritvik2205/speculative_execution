.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, 116 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rdx]
or dl, cl
and rbx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rbx]
or dl, dl
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 19
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], eax
and cl, 40
or sil, sil
cmovns ax, bx
jmp .bb_0.1
.bb_0.1:
cmovnbe ax, di
and rax, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
cmovnbe ecx, eax
and bl, sil
and rdx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], cx
bt ecx, 31
cmovo rax, rdi
and bl, 44 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdi]
and cl, 113 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rsi], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
