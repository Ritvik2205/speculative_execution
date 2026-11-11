.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovbe rbx, rcx
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 88
and esi, 77
add cl, 9 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], bl
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], bl
xor cl, bl
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], 36
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
neg sil
and rsi, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], cl
and rcx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rcx]
xor esi, ecx
and rcx, 0b1111111111111 # instrumentation
movzx esi, byte ptr [r14 + rcx]
lea ecx, qword ptr [rax + rcx + 98]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
