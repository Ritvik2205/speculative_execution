.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdi
and bl, 120 # instrumentation
cmovnle ecx, ecx
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rdx]
test dil, al
cmovns si, bx
and rdx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rdx]
test edi, -1252846009
bts edi, 248
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 81
and rsi, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], rdx
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], -86
and bl, 8 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rdi]
and dl, bl
and al, -23 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rax]
not bl
and rax, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rax]
test bl, sil
and rdi, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
