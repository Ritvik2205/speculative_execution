.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 78
and ax, di
or rbx, rax
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], -65
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
or ecx, 49
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
btc di, 98
and rdi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
and rsi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rsi], 37
bt ecx, ebx
and dl, -107 # instrumentation
cmovz rbx, rcx
or bl, dl
cmovp di, cx
or dil, al
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 60
and al, 33 # instrumentation
cmovnle edx, ecx
xor eax, 73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
