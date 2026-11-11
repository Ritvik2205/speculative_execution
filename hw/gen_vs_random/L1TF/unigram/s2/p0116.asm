.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rdx, 1 # instrumentation
add al, 122 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rcx]
add dl, 109 # instrumentation
sbb al, 33
and rdx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rdx]
adc sil, 71
and rdx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdi
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 5
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], 27
setnb dil
and rcx, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rdx]
cmovnl edx, eax
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
