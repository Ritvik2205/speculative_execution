.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rbx]
cmovl ecx, eax
add dil, -6 # instrumentation
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], dil
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], 69
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 74
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], dil
and rsi, 0b1111111111111 # instrumentation
movzx si, byte ptr [r14 + rsi]
movsx si, bl
jns .bb_0.1
jmp .exit_0
.bb_0.1:
lea eax, qword ptr [rsi + rdx]
mov cx, 5
and rax, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], ax
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
add cl, -83 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
