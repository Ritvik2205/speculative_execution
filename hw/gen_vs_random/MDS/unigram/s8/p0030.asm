.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 45 # instrumentation
cmovnb ax, si
btr di, 89
or eax, 359647041
bt esi, 3
cmovnz rsi, rax
cmovns ebx, esi
and cl, -85 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ecx
bt cx, bx
xor edi, 32
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], ebx
btr rdx, 98
and rcx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rcx]
and bl, bl
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 43
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
or sil, cl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], 124
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rdx
test eax, 343548072
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
