.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
cmovno di, di
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], bl
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], cl
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
add cl, -34 # instrumentation
setl al
add dl, -74 # instrumentation
and rbx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rbx], dx
sub al, 25
cmovno esi, esi
movzx eax, dl
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
cmovnl ax, dx
setz al
movsx edx, dl
setz bl
cmp ax, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
