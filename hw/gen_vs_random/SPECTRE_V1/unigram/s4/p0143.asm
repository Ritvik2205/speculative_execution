.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 91 # instrumentation
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rcx
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], ax
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], -46
cmovp cx, ax
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 54
add cl, 112 # instrumentation
movzx esi, dil
sets dil
lea eax, qword ptr [rbx + rbx + 18245]
add si, 68
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], ax
cmp si, dx
and rax, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rax]
cmp al, al
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
