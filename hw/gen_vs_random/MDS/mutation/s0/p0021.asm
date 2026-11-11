.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -82 # instrumentation
cmovz edx, edi
and rax, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rax]
cmovo ecx, edi
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdx]
bt dx, ax
btc rcx, rcx
and rcx, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdi
and rcx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 5
jmp .bb_0.1
.bb_0.1:
and ax, 19224
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 5
and rsi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], ecx
and rdi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], edi
and cl, -76 # instrumentation
cmovl si, ax
and rbx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], di
or si, 0b1000000000000000 # instrumentation
bsr ax, si
and bl, 98 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
not word ptr [r14 + rsi]
test bl, bl
or dil, -78
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btr dword ptr [r14 + rbx], edx
and cl, 126 # instrumentation
and rax, 0b1111111111111 # instrumentation
not word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], -85
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -1773864540
cmovns ax, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
