.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdi
or rcx, rax
and rcx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rcx]
cmp cl, 13
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 4
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], esi
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], edi
js .bb_0.1
jmp .exit_0
.bb_0.1:
bt eax, esi
cmovs rax, rax
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], edx
lea edx, qword ptr [rsi + rsi + 18]
adc dl, sil
cmovle cx, cx
lea rbx, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
