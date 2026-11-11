.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ecx, -38
lea ecx, qword ptr [rbx + rdx]
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], ax
add bl, -117 # instrumentation
lea rax, qword ptr [rbx]
setnp bl
lea rdx, qword ptr [rsi]
cmp dil, cl
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], rbx
mov dl, al
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
movsx cx, sil
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], -12
bt rcx, rdi
lea edx, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
