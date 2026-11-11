.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], bl
and rcx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rcx]
setbe dl
cmovp dx, dx
cmp al, 53
and rsi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 1
and dil, 98
and rsi, 0b1111111111111 # instrumentation
sub rdi, qword ptr [r14 + rsi]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
cmp bx, 10
and rcx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rcx]
lea si, qword ptr [rsi]
add dil, dl
sbb dl, 127
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], 81
lea rdx, qword ptr [rsi + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
