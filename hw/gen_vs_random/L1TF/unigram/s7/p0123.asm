.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr ebx, 74
and rdi, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rdi]
add dx, 55
imul bx, si
xor bl, bl
and al, cl
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 59
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
movsx eax, bl
or rcx, 67
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rcx]
test bx, 65
and rbx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
