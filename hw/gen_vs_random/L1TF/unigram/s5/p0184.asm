.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
and rax, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rax]
xor al, sil
xor bl, al
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rcx]
inc bl
mul rdx
test ecx, ebx
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 7
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 39
lea si, qword ptr [rsi + rbx + 26]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
add al, -80
cmovno dx, si
and rax, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rax]
sub dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
