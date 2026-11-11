.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 3
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
and al, bl
and rdx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rdx]
or dil, -57
xor ecx, 66
test al, -59
cmovle cx, cx
and di, dx
bt eax, eax
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 88
and rdx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdx]
or dil, -57
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 2
and rbx, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdi]
cmovnb cx, di
and bx, -21
and rcx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
