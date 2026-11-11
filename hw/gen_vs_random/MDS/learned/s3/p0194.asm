.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, esi
and al, -54
test dl, sil
xor cl, 55
xor cl, dl
and di, 99
or ecx, eax
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
and sil, bl
jmp .bb_0.1
.bb_0.1:
and dil, 125
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
jmp .bb_0.2
.bb_0.2:
test edi, -1252846009
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
xor cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
