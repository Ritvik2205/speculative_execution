.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
and rdx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rbx]
and dl, 8 # instrumentation
cmovz rbx, rdx
btr cx, ax
btr rax, 29
or si, di
and rdx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rdx]
and al, 20 # instrumentation
cmovp di, cx
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 5
test bl, -114
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], dx
btc ebx, 149
and rcx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rdx]
and ax, 19224
cmovle di, ax
not sil
test al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
