.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdx], 0
cmp rax, -1247892360
test eax, -31785616
xor al, -82
or al, -90
or dil, dl
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
sub al, 69
and rbx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdx]
and al, dl
or dil, 89
or al, -90
and rsi, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rsi]
cmp al, -122
xor al, sil
sub dl, 107
and rax, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
