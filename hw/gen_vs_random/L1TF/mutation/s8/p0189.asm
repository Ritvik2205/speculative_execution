.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, al
cmp esi, 110
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
cmovo rdi, rsi
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], -27
setnb cl
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
test bl, -92
btr rcx, rdi
jmp .bb_0.1
.bb_0.1:
inc rax
lea rdx, qword ptr [rdi + rbx + 35553]
sub al, -97
and rcx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rcx]
lea rcx, qword ptr [rax]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
cmp dl, bl
lea ecx, qword ptr [rdx + rax]
or dl, -92
setz cl
cmovle rbx, rsi
bt rsi, rdx
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -30
sbb bl, bl
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], -71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
