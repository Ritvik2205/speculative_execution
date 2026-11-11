.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -76 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rcx]
imul rcx, rdi
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 40
add al, 45 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rax]
lea bx, qword ptr [rdi + rdi + 63]
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], edi
lea si, qword ptr [rbx + rdx + 27]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
test al, 42
add dl, 71 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rsi]
setnz dil
cmovnbe rdx, rax
cmovnbe rsi, rax
add rbx, 47
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 31
sbb dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
