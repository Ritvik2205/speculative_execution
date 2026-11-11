.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovle cx, bx
xor rsi, 59
and rbx, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rbx]
xor sil, dl
and cl, 86
test dil, al
jp .bb_0.1
jmp .exit_0
.bb_0.1:
adc edi, 7
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], -88
and rbx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rdi]
sub al, -1
add al, 86 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rbx]
bt edx, 54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
