.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, 21
and rdi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], 46
test bx, dx
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
inc bl
lea ax, qword ptr [rcx + rdi]
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], bx
cmovnle rdx, rbx
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 5
test bl, -8
setnb al
cmovnl eax, ecx
sub bl, dl
xor al, bl
and rdx, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
