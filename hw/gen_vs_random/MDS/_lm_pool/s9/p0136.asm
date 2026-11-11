.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 44
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
test al, dl
and rax, 41
xor cl, 55
or sil, dl
xor dil, 81
xor ax, 23633
and dil, -39
and dl, dl
cmovnp rbx, rax
not sil
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
xor cl, 98
or dl, al
cmovno rcx, rdx
or dil, -41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
