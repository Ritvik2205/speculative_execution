.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, ecx
add rcx, 23
and rdx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rdx]
sub bl, cl
test dl, -105
cmp al, dil
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], cx
lea di, qword ptr [rdx + rax]
xchg sil, al
mov dl, cl
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
