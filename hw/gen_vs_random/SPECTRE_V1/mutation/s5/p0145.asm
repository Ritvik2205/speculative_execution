.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rcx]
add rax, -845342150
movzx edi, di
cmovb rbx, rsi
test al, 40
add dx, -103
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and sil, 111
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 112
and rdx, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rdx]
or ax, 19104
and rdi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdi]
xor rax, 29
mul bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
