.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, 65
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 68
and rsi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rsi]
sbb al, 66
sub sil, bl
add dl, -104 # instrumentation
lea rdx, qword ptr [rbx + rax + 13]
and rsi, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rsi]
test cx, -17886
mov edx, ebx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
test cl, dl
bt edi, esi
and cl, -57
movzx ecx, bl
and rdx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
