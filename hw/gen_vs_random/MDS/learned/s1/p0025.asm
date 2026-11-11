.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -8
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 4
and rbx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1987381845
cmovns rsi, rbx
xor edi, 38
or dl, 22
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rsi
and rcx, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rcx]
xor dl, -68
and rsi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], si
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
cmovnbe esi, ebx
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], dx
bts rsi, 89
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], -13
bts bx, ax
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], dx
or ax, -17790
test sil, 46
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
