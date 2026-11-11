.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -38 # instrumentation
setbe al
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
test rdi, 61
and rdi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdi]
not al
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dl
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -82
and rbx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
btc di, bx
lea ax, qword ptr [rbx]
btc rbx, 52
add dl, -126 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rbx]
neg esi
add dl, bl
adc sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
