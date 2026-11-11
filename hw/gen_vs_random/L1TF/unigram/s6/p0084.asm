.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 3 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdi]
xor cl, bl
and rdx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdx]
test sil, sil
and rdi, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdi]
inc cx
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rcx
setnl bl
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
setnl cl
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], al
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], bx
and rdx, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], 89
and rsi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
