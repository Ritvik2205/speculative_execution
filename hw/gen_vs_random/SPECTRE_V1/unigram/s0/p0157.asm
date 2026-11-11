.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 43
sbb rcx, 51
cbw
dec rbx
neg rax
mov dl, dl
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], si
and rcx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rcx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 63
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], al
movsx cx, sil
btr rdx, rbx
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], cl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
