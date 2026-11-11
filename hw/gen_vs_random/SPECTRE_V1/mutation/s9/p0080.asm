.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rsi]
add al, -9 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], ecx
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rax]
add dl, 9 # instrumentation
adc dl, al
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
lea edx, qword ptr [rdi]
and rsi, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rax]
js .bb_0.1
jmp .exit_0
.bb_0.1:
add al, -46 # instrumentation
cmovbe rax, rbx
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 61
and rax, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rax]
cmovbe ebx, esi
and rcx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rcx]
xor edx, eax
and rdx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rdx]
mov al, 7
cbw
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
