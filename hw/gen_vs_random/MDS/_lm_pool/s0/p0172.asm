.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 6
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
btr bx, ax
or bl, 127
test rdx, 15
and di, 99
and al, dil
and rax, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
or al, dl
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
xor sil, -126
jmp .bb_0.2
.bb_0.2:
xor dil, al
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
