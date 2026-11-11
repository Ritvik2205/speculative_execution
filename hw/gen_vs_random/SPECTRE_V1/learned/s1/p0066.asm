.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 56
lea rax, qword ptr [rsi]
and bl, bl
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
or di, bx
cmp cl, 3
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 92
and rdx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdx]
bt ecx, 198
add dl, 45 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdi]
movzx cx, dil
movsx di, al
and rax, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
