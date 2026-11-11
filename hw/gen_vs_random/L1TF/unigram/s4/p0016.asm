.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdi], -100
and rdi, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], rsi
and rsi, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rsi]
btc ebx, esi
and rbx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rbx]
lea bx, qword ptr [rcx + rcx + 41]
mov eax, edx
sub eax, 54
sbb edi, edi
imul bl
movzx rdx, dil
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], cl
and rcx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rcx]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rdx
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
