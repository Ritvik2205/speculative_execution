.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
btc di, dx
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], ecx
and rsi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rsi], edi
cmovno rbx, rbx
cmovno cx, ax
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rdx]
xor al, 9
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
or al, dil
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 91
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -6
xor sil, bl
and rbx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 36
and rax, rax
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 63
or dl, -89
btr dx, 47
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
