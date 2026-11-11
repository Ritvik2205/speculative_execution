.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rdx]
cmovs bx, si
xor sil, al
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 99
and rax, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rdi]
or di, 22
test cl, bl
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
add al, -34 # instrumentation
setnp dl
cbw
sub eax, 100
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], 70
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
