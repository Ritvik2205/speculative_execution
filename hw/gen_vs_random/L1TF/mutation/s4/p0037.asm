.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -122 # instrumentation
cmovnbe edx, edx
bswap rbx
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], sil
xchg ax, ax
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
sub al, -75
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], sil
jmp .bb_0.1
.bb_0.1:
imul cx, bx
imul ecx, edi
add dl, -57 # instrumentation
setz sil
movzx si, dil
btc ebx, ebx
add cl, 39 # instrumentation
setle bl
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], si
xchg bx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
