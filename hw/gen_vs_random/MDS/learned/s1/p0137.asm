.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rcx]
and ax, si
lea edx, qword ptr [rax]
bt ebx, esi
and rcx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rdx
and di, dx
xor rbx, rdi
or dl, sil
or bl, dl
adc al, 94
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 63
xor ax, 24729
and rsi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rsi]
cmp al, 71
xor cl, sil
cmovbe bx, bx
test dil, -67
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], -16
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], si
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
