.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], al
bswap rbx
setno sil
xor dil, dil
or di, 11
and rdx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rdx]
add bl, 115 # instrumentation
setz bl
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
setp cl
add dil, dl
test rax, rcx
sub rax, 57846954
add bl, -31 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rbx]
lea eax, qword ptr [rax + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
