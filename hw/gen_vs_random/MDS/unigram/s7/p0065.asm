.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], si
and cl, -108 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rcx]
xor cl, 15
or al, -17
test bl, -114
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], 5
and rsi, rsi
btc rsi, rsi
and rax, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
cmovz ebx, edx
btc rdi, 221
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rbx]
or cl, 119
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
