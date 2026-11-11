.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], -110
and rax, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rax]
cmovb cx, di
or dl, sil
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], dl
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], dx
or edi, 1 # instrumentation
and edx, edi # instrumentation
shr edx, 1 # instrumentation
div edi
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf esi, eax
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 7
add dl, 104 # instrumentation
mov edx, -377652802
sub al, -97
xor bl, dil
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 83
cmovs bx, dx
and rdi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
