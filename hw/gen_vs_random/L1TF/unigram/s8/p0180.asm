.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rax]
cmovbe rdi, rsi
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
cmp dil, 84
lea edx, qword ptr [rbx]
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], rdi
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
setp al
jmp .bb_0.1
.bb_0.1:
cdq
cmovno cx, ax
mov dx, 76
not eax
and rcx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rcx], 50
bt ebx, 76
add al, -21 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rsi]
add bl, 111 # instrumentation
cmovs rdi, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
