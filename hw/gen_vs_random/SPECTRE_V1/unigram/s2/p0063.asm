.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovbe si, di
and rcx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rcx], 48
movsx rcx, si
movsx edi, cl
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 79
and rdx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rdx]
add bl, -57 # instrumentation
and rsi, 0b1111111111111 # instrumentation
movzx rax, byte ptr [r14 + rsi]
sub sil, -18
and rdi, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rcx], ebx
cmp ebx, -33
and rbx, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rbx]
add dl, -34 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rdx]
lea rdi, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
