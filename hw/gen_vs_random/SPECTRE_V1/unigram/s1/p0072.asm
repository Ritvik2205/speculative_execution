.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], -27
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
add dl, 71 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rsi]
sbb al, 118
sub al, -1
cmovo di, si
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add edx, 86
add bl, 2 # instrumentation
and rax, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rbx]
sbb ax, bx
cmovs si, cx
movsx dx, bl
xchg sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
