.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rbx]
cmp rax, -1247892360
and di, -65
cmp dil, 53
and rdi, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
sbb dil, 14
or bl, 80
and rbx, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rbx]
movsx di, cl
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
cmp edx, -95
xor si, -73
neg al
sbb cl, 127
sub al, 0
add dl, dil
or dl, -26
sbb al, 57
xor al, cl
or al, 27
test ecx, -1293796332
test dil, -26
xchg esi, ebx
sub cl, al
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], sil
sub bl, al
sub dl, dil
cmp dil, -92
test sil, dl
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], -108
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
