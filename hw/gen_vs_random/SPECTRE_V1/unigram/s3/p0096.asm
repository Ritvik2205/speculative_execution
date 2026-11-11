.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdi], 81
sbb cl, dil
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], 85
and rbx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdi]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
sbb eax, 23
or si, 50
and rcx, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 18
and rdi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdi]
cmovnb di, dx
and rax, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rax]
xor rbx, 8
cmp cl, bl
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 40
dec rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
