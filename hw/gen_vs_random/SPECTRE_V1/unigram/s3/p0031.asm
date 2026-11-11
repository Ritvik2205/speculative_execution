.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dl
and rdi, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 26
setnz cl
and rdx, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rdx]
add dl, 125 # instrumentation
adc dl, bl
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 43
sbb edx, 1
jp .bb_0.1
jmp .exit_0
.bb_0.1:
test dil, 18
add al, -125 # instrumentation
cmovb eax, ecx
add cl, 105 # instrumentation
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 81
bts rdx, rsi
and rsi, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], 41
imul bl
and rbx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
