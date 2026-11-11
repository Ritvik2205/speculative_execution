.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov si, 9258
add eax, ebx
and rdx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdx]
mov ebx, esi
xchg rdx, rdx
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 51
test dil, 18
mul rdi
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and dl, 95
or si, 72
btr rcx, rdi
and rsi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rsi]
add dl, 35 # instrumentation
cmovnz rdx, rbx
test dil, 18
cmp al, 31
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
