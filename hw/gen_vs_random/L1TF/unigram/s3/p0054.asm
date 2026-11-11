.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sets dl
add cx, 59
and rcx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rcx], 1
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dl
and rdx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
add al, 104 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rsi]
sub ecx, 92
cwd
lea cx, qword ptr [rax]
and rcx, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rcx]
xor bl, al
lea ax, qword ptr [rax]
lea edi, qword ptr [rdx + rdi]
cwde
add al, -122 # instrumentation
cmovnbe eax, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
