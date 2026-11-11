.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rsi, rcx
and rcx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rcx]
lea ebx, qword ptr [rsi + rbx + 65254]
or rax, rbx
and rdx, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rdx]
cmp cl, dil
add cl, -23 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
xor rbx, 59
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
movsx edx, bl
cmp al, 56
and rcx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rcx]
and cl, 49
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], si
and rcx, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
