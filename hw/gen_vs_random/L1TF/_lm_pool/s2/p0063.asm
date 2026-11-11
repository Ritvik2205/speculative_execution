.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -57 # instrumentation
and rdx, 0b1111111111111 # instrumentation
movzx rcx, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], al
cmovnle rbx, rdx
and rdx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
or rdi, 12
lea rcx, qword ptr [rbx]
lea rdx, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
