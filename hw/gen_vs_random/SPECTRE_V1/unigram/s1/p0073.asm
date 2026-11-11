.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdx]
adc al, dl
lea esi, qword ptr [rcx]
and rbx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rbx], 97
add dl, 113 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
lea rax, qword ptr [rdx + rcx]
add bx, si
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], edx
imul ecx, ebx, 31
jl .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 11 # instrumentation
cmovns ebx, eax
and rsi, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rsi]
cmp cl, 60
and rcx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 35
sub bl, -6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
