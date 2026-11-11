.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
sub al, -1
btc ax, di
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
and dl, dil
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
lea rsi, qword ptr [rdi + rbx + 59]
xchg sil, bl
and al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
