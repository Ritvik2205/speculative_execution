.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 28 # instrumentation
setnz cl
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], sil
xor bx, 70
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], si
add al, -121 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rcx]
add al, 99 # instrumentation
sets al
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 51
lea rcx, qword ptr [rdi + rdi + 35]
xor cx, 8
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
dec rsi
and rdi, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rdi]
lea ecx, qword ptr [rax]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], 86
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 8958
and rsi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
