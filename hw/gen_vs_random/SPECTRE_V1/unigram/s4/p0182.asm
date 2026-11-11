.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setz bl
and sil, 52
and rax, -175411684
and rax, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rax]
adc al, bl
lea ebx, qword ptr [rdi]
and rdi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rdi], eax
jle .bb_0.1
jmp .exit_0
.bb_0.1:
sub dl, 96
and rbx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rbx]
lea ecx, qword ptr [rax]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rdi]
add bl, 4 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdx]
setno dl
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], al
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], ecx
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
