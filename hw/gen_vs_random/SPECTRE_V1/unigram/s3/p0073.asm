.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], di
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and bl, cl
movsx di, cl
and rsi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rsi]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, 97 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rdx]
adc al, -92
mul si
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], 79
not esi
add dl, 47
and rbx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rbx]
setbe dl
add al, 120 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
