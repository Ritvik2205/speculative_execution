.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx edx, al
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 3
sub edx, -33
bt dx, si
and rcx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], ax
jmp .bb_0.1
.bb_0.1:
movzx ecx, si
setp dil
cmovnz rdx, rbx
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 41
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rdx
and rbx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rbx], 86
lea rcx, qword ptr [rbx + rsi + 33]
add al, -102 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdi]
add dl, -8 # instrumentation
lea eax, qword ptr [rcx]
bts esi, 87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
