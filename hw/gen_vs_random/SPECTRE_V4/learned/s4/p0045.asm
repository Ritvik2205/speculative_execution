.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, sil
and dl, 24
or dl, bl
add ax, -9762
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
cmp dl, al
cmp dil, -29
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 38
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -21
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
cmp bl, -16
mov al, dil
mov dl, 81
and dil, -120
xor di, 21
sub dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
