.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rcx
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 96
cmp dx, 44
cmp bl, sil
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], cl
cmp al, dl
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], -7
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], 58
and rdx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rdx], 100
add bl, 119 # instrumentation
cmovle si, dx
lea rbx, qword ptr [rbx]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], -49
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rcx]
cmovnbe edx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
