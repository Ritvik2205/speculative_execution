.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -49 # instrumentation
setnb dil
or rax, 1447934463
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
setnp cl
btc di, si
and dl, cl
and rcx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], sil
add dl, al
jmp .bb_0.1
.bb_0.1:
add dl, -121 # instrumentation
cmovnp eax, edi
lea si, qword ptr [rdi]
and rsi, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 39
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
or rax, 1447934463
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
xor dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
