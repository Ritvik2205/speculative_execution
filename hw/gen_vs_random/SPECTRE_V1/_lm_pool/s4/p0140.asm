.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 67 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rsi]
test cx, -17886
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
inc bl
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], cl
and rsi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dil
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
