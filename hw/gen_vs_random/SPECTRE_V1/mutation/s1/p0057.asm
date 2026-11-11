.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], ecx
lea edx, qword ptr [rdi]
add al, -9 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rax]
add dl, 9 # instrumentation
adc dl, al
and rsi, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rsi]
js .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, -68 # instrumentation
add dl, 54 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], dil
and rcx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rcx], ecx
and rax, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1 # instrumentation
and dx, word ptr [r14 + rbx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rbx]
cmovnle rax, rsi
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], -6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
