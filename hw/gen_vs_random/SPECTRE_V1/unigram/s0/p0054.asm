.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnl bl
movsx di, al
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], bx
add bl, cl
btr si, cx
and rbx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rsi]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
test dl, 113
and rax, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rax]
sbb ecx, 80
add al, sil
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 9
add edi, -91
and rcx, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
