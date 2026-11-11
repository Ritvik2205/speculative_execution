.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], 19
mov al, sil
add sil, 16 # instrumentation
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 93
test ebx, -1465665890
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], -119
and rdx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rdx]
add bl, -95
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rdx
jns .bb_0.1
jmp .exit_0
.bb_0.1:
sub eax, edi
cmp rax, -1365488374
lea rsi, qword ptr [rax + rdx + 18]
and sil, 111
and rcx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rcx]
or rcx, rcx
imul dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
