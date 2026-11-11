.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rdi, rcx
cmovb ecx, edi
xor cl, 122
not di
or cx, 0b1000000000000000 # instrumentation
bsf cx, cx
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf esi, esi
cmovnb di, si
xor cl, 122
cmovs edx, ecx
xor al, 78
or bl, 73
and rbx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rbx], ax
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], -40
xor ax, 2053
xor dl, sil
bt esi, 71
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
cmovle rdx, rdi
and rcx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rbx
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 4
or dil, -57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
