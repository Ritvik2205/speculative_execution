.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl di, bx
add al, -117 # instrumentation
not rcx
add dl, al
test cx, -17886
sub dil, sil
add dl, 38 # instrumentation
setp sil
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], rdi
add cl, -96 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rbx]
xchg cl, dl
js .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -126 # instrumentation
cwd
and rcx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rdx
setl dl
add sil, sil
btr si, 5
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
