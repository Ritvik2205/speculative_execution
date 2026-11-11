.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx cx, al
sub dl, sil
and cx, dx
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dil
and rdx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdx]
or dil, 80
test al, 42
and rax, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rax], si
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
lea si, qword ptr [rcx + rsi + 53]
neg edi
cmovnz bx, di
and rax, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
add cx, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
add cl, -51 # instrumentation
cmovl eax, ecx
test ecx, 71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
