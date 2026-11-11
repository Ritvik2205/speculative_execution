.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr dx, si
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
and rax, -636362975
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], rbx
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and dil, 125
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 71
xor rax, -404206377
xor rax, -1128378406
test al, sil
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
and ax, 19740
or dil, bl
xor ax, -23364
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
