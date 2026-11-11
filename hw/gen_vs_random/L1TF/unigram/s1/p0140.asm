.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 42 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
sub cl, -49
and rcx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rcx]
cmovnz dx, bx
lea ax, qword ptr [rsi + rdi + 100]
not bl
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 46
lea rax, qword ptr [rax]
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], sil
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and rax, 0b1111111111111 # instrumentation
not word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
add dil, -23 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rdi]
add cl, 98 # instrumentation
inc cl
test rdx, 40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
