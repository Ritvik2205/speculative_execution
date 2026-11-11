.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe rax, rbx
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
bts rdi, rcx
and rdi, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], eax
js .bb_0.1
jmp .exit_0
.bb_0.1:
sub sil, al
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], ax
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], bx
and rcx, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rcx]
add bl, sil
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
lea edx, qword ptr [rdi + rcx + 93]
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], 11
cmovns rcx, rcx
xchg rax, rax
add sil, sil
and rbx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
