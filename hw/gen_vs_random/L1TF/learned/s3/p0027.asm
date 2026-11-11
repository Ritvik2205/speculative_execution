.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 2
add al, -104 # instrumentation
and rax, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rax]
lea cx, qword ptr [rax + rcx]
xor cl, cl
and rdx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 5
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], edi
and rax, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rax]
add dl, 100 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rdi]
sub dl, cl
cmovp edi, esi
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
setnz dil
cmovno ax, ax
and rdi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
