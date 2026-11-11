.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp al, dl
and rsi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rcx
and cx, 31
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 812406526
add bl, 9 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rbx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
xor dil, cl
sub edx, -63
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], 11
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
and rax, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], ecx
mov bl, dil
or bx, 0b1000000000000000 # instrumentation
bsr si, bx
add bl, 97 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
