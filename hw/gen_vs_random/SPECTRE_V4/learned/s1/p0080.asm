.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, -35
xor al, al
btc rdi, rbx
and cl, al
sub bl, al
sub dl, bl
mov cl, al
xchg bl, dl
and rax, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rax]
sub cl, 92
or al, bl
test edi, -1380439873
movsx cx, al
cmp al, dl
and dil, cl
xor ax, 45
or cl, dil
xor ax, 45
or cx, 23
cmp al, bl
and rbx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rbx]
xor bl, sil
sub al, 0
and bl, al
add dl, -8
and sil, -84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
