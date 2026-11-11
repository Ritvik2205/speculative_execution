.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], ax
add bl, 68
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 37
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], al
setnbe al
and rcx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rax]
btr ecx, edx
jmp .bb_0.1
.bb_0.1:
add dl, -17 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdx]
cmp edi, 13
and rcx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rcx]
lea esi, qword ptr [rbx + rbx]
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], 24
inc esi
cmovnb rcx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
