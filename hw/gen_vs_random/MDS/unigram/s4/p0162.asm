.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, dl
bt rdi, rdi
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
and rdi, 16
and rcx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
xor ecx, 24
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 6
xor dl, -68
not ecx
and rcx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rcx]
and sil, cl
and dl, -107 # instrumentation
cmovz rdi, rcx
and rax, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rax]
or cl, sil
and rdx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rcx]
xor bx, si
and dl, 91 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
