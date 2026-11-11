.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts edx, 189
test edi, -1252846009
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
jmp .bb_0.1
.bb_0.1:
or al, 30
test al, dil
or cl, al
or sil, -49
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], ecx
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
or al, 25
test bl, cl
or rsi, 46
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rsi
and sil, 74
bt ax, cx
and rdx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
