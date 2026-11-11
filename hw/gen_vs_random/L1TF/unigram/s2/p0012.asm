.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdi]
adc cl, -34
setl al
xor rdi, rax
or si, si
and rbx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rbx]
not ecx
lea edx, qword ptr [rdi + rdx]
jmp .bb_0.1
.bb_0.1:
xor dl, cl
and rdi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
movsx eax, sil
and rdi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
