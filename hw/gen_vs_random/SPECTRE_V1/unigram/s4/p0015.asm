.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
seto al
and rbx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rbx]
cmovo rcx, rcx
and al, sil
test sil, 13
and rdx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rdx]
lea edx, qword ptr [rbx]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], si
and rdx, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rdx]
and cl, -57
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
or dx, dx
bt rcx, rcx
cmovnz di, bx
bt edx, 40
and rdx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdx], 99
and rcx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
