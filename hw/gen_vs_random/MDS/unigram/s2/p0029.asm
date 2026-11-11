.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 48 # instrumentation
cmovz rdx, rbx
test ebx, -961564216
xor al, -19
xor dl, -19
or sil, -78
or dl, dil
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
xor ax, -5889
and rcx, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], bx
and al, 67 # instrumentation
cmovl rdx, rsi
and rcx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rsi]
or rcx, -17
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btr qword ptr [r14 + rdi], rcx
and rsi, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rsi]
xor dl, al
xor edx, edx
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 101
btc esi, 199
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
