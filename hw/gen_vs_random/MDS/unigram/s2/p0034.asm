.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, bl
cmovz rax, rsi
or dl, al
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
bt cx, ax
btr si, 208
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 5
and rax, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdi
and rax, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], sil
and rsi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -337720409
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
btc dx, 67
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], ebx
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
test rbx, 57
bts rdx, rbx
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
