.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb bl, dl
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
lea bx, qword ptr [rdx + rax + 9]
add cl, 78 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rcx]
xchg edx, eax
add al, -36 # instrumentation
and rdi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdi]
mov rbx, -8992833348021516010
xor rbx, 50
and rax, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rax]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdi]
add dil, -26 # instrumentation
cmovle rax, rdi
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1921229398
setns bl
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], rbx
and rdx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
