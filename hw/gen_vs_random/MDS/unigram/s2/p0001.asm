.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 6
xor dl, -68
and cl, al
and rax, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rax]
or edi, eax
cmovle ax, ax
bt rax, rsi
cmovnz rdx, rdi
or edi, esi
cmovnl bx, si
and rdi, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
xor sil, dl
bts ecx, eax
or cx, 10
and rbx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rdi]
and dx, di
cmovnb ax, cx
and rbx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], ax
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btr qword ptr [r14 + rsi], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
