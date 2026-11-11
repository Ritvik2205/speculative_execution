.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea edx, qword ptr [rcx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 5
xchg rdi, rdx
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 41
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 7
add bl, 115 # instrumentation
setz dil
and rbx, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rbx]
test ebx, ebx
and rdx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rdx]
test dl, 84
add cl, -73 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rcx]
and edx, 69
and rsi, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rsi], 57
and rcx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
