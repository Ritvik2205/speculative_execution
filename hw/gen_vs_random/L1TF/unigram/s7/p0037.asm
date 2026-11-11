.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -9 # instrumentation
adc rsi, 98
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rdi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdi]
mov al, dil
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], al
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 11
mov dil, al
lea rbx, qword ptr [rdi + rsi]
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rcx]
lea edx, qword ptr [rdi + rdx]
add cl, 88
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
