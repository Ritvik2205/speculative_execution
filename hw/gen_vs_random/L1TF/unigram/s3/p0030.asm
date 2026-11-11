.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dil
bswap rbx
xor al, 38
add cl, 55 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rsi]
movzx rax, ax
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], 81
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
xor rax, 20
neg sil
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
lea bx, qword ptr [rsi]
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
lea edi, qword ptr [rdx + rdi]
adc rdx, 41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
