.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea edi, qword ptr [rdi + rax]
adc rdi, 34
and rbx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rbx]
test al, -126
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], cl
and dil, sil
jb .bb_0.1
jmp .exit_0
.bb_0.1:
btr edx, eax
cmp edx, 44
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rbx]
btr rsi, rbx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 1 # instrumentation
and dx, word ptr [r14 + rcx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rax]
cmp rcx, 88
test rsi, -1408527332
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 86
cwde
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
