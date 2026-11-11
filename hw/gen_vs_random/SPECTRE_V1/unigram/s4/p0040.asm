.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rsi, qword ptr [rdi + rbx + 81]
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bts word ptr [r14 + rdx], si
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], -39
add dl, -68 # instrumentation
add dl, 54 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], 98
xor dx, dx
cmovz ebx, eax
add dl, 6 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rbx]
xor sil, -33
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
or dil, dil
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
sbb dil, dil
and rdx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rdx]
cmovns rdi, rcx
sub sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
