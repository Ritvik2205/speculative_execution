.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
btc dx, 67
test al, bl
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
and cl, al
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
test sil, bl
xor dl, -19
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
not dil
xor dil, bl
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
and sil, al
or al, dl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
xor sil, 94
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
