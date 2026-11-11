.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt edi, 92
and rdx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rdx]
mov cl, cl
and rdx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdx]
mov ax, cx
add dl, 121 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
cmovo rbx, rdx
jmp .bb_0.1
.bb_0.1:
add al, al
btr edx, eax
and rsi, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rdi]
or dx, 0b1000000000000000 # instrumentation
bsf dx, dx
test rax, rbx
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], 9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
