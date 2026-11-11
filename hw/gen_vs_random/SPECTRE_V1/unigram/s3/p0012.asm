.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 70
add al, 39 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rbx]
bt eax, 127
sub sil, -55
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], edi
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], 75
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rax]
add al, -92 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdx]
mov dil, dl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], bx
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], cl
xor rcx, 16
lea dx, qword ptr [rsi]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], cl
setbe dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
