.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
add rax, 324518812
and rax, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rax]
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
adc esi, 60
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
xor dl, 9
xor edi, 5
and rbx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rbx]
or bx, 0b1000000000000000 # instrumentation
bsf dx, bx
or sil, -27
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], -103
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rbx]
cmovns rsi, rsi
lea edx, qword ptr [rsi + rdi + 56]
bt rsi, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
