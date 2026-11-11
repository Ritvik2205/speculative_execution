.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rsi]
imul al
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 0
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], dil
btr ecx, 95
and rbx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
movsx rdx, dx
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], dl
and rcx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rcx]
and di, 3
and rdx, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rdx]
and dil, bl
add dl, -102 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
