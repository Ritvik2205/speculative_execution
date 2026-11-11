.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 121
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
bt rdx, rsi
test sil, sil
and rdx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rdx]
or di, di
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], -46
and rax, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rax]
test bl, al
cmovle cx, dx
test eax, edx
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], ecx
cmovz rbx, rbx
or cx, 39
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], sil
and rdx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rsi]
xor rbx, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
