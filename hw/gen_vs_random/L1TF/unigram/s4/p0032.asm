.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
sub rcx, -90
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], -8408
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
lea bx, qword ptr [rsi + rcx]
and rbx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rbx], eax
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
and rdx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rdx]
sbb cl, bl
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rbx]
dec eax
or sil, -44
and rdi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], 48
mov dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
