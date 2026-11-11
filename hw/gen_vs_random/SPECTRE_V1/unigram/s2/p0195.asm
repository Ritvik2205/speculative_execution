.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, 23
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], -97
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], si
add sil, bl
setnp sil
test al, 70
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], -40
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
movzx cx, byte ptr [r14 + rcx]
cmovbe rdi, rax
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 15
add dl, 116 # instrumentation
cmovbe rsi, rsi
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], cx
sub rax, -132886581
and rax, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
