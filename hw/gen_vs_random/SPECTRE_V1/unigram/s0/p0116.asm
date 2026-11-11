.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, cl
add bl, 6 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
sub rdx, 89
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
and rax, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 102
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rcx]
lea rbx, qword ptr [rdi + rdx + 7]
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 17
and rdi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rax]
cdq
cmovs ax, bx
imul dl
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
