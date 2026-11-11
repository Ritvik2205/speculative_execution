.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], -109
and rsi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rsi]
xor al, cl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 44
bt rcx, rsi
btc rcx, 44
and cl, -22 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
or sil, cl
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
or si, 0b1000000000000000 # instrumentation
bsr ax, si
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 36
and rax, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rax]
or cx, 10
bt di, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
