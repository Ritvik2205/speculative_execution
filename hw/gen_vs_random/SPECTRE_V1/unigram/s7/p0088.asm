.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx edi, al
test ax, dx
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], edx
and rbx, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rbx]
sub rbx, rsi
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], dl
lea ax, qword ptr [rdx + rcx]
add dl, 58 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rdx]
xor bl, -38
and rdi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rdi], dx
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], 60
and rbx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rbx]
lea si, qword ptr [rsi + rsi + 10]
cmovno dx, si
and sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
