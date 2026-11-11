.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovo rdi, rcx
and rcx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rcx], bx
sbb cl, -11
test al, -32
inc rcx
xchg edx, edi
xchg dil, sil
cmp edx, 99
jmp .bb_0.1
.bb_0.1:
xor dil, bl
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], edi
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 7
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], ecx
and rax, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], cl
lea eax, qword ptr [rsi + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
