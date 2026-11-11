.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, dl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
xor rbx, 89
test edi, -1252846009
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
jmp .bb_0.1
.bb_0.1:
xor sil, -15
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], al
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -3918
bts ecx, 184
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 2
and dil, sil
jmp .bb_0.2
.bb_0.2:
test rsi, 99
test esi, 425331143
or al, -24
and esi, 32
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
