.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovz edx, esi
bts ax, 18
dec bl
sub rsi, rsi
sub al, -66
sub dl, -12
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], dx
and rsi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rsi]
and dl, sil
and rdx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rdx]
movzx di, al
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rsi]
add al, -76 # instrumentation
adc cl, 64
and bl, -43
setz sil
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
