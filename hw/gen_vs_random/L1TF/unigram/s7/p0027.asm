.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], dl
sbb dil, 67
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], -103
setns al
sub dl, bl
and rsi, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rsi]
add bl, 10 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], 86
add al, 78 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
add bl, -49 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rbx]
imul rcx
or sil, dl
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], cl
and rcx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rcx]
xor dl, 64
test rcx, 89
bts si, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
