.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovbe rdi, rax
cmovz ebx, eax
bt ecx, 204
sub al, al
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 90
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], 50
lea cx, qword ptr [rcx + rsi + 34]
movzx ax, cl
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], dl
xor ecx, 68
adc bl, -76
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
btc esi, 48
setbe cl
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
