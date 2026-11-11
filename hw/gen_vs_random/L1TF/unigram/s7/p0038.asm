.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rcx]
sbb rcx, rbx
imul sil
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
and rsi, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dl
or al, cl
and rbx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rbx], 2
cdq
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
xor rdi, rbx
add al, -1 # instrumentation
nop
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdi
and rdi, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdi]
movsx eax, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
