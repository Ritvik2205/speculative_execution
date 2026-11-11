.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rcx]
sub dl, sil
add cl, 32 # instrumentation
cmovnbe rdx, rbx
sub cl, -47
add al, 96 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rax]
setno cl
and rbx, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rbx]
sub di, 22
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], di
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], -27
cmovnp rdx, rcx
and rax, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], 33
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
