.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btr dword ptr [r14 + rcx], edx
sub rax, -679751639
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], edx
imul dil
imul ax, bx
and rax, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rdx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rdi]
add dl, -15 # instrumentation
and rax, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], 22
cmovp edi, eax
setno dil
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], -58
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
