.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
cmovnz ecx, ecx
test rax, -2004802425
or sil, -78
and rcx, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rcx]
and bl, 116 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdx]
test dil, 46
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 6
and rbx, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rdx]
and al, 17 # instrumentation
cmovnp ebx, ecx
and rdx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
btr eax, edx
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], di
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
cmovo ax, si
test di, 86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
