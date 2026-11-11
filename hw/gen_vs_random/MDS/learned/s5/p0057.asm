.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rax]
and ebx, 39
test bl, dil
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dl
jmp .bb_0.1
.bb_0.1:
and eax, 561041355
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1324040999
test al, -7
and sil, -56
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
or al, -22
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -14916
xor dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
