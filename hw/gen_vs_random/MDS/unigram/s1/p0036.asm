.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 27 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rbx]
btr rcx, 46
bt bx, 253
or dil, -76
or bl, 127
and rcx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rcx]
bt rax, 82
and rbx, 65
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 9
btc cx, 115
and cl, 114 # instrumentation
cmovz ax, cx
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], esi
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 47
and cl, 122 # instrumentation
cmovl edx, edx
bt rsi, rax
btr ebx, eax
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], cx
xor al, al
xor dx, 50
and rdi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
