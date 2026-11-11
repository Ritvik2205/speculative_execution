.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], di
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], ecx
add bx, -65
jp .bb_0.1
jmp .exit_0
.bb_0.1:
or bl, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
movzx edi, bl
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
sbb edx, 105
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -89
mul dl
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
imul cl
and rdx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rax]
add dil, 72
and bl, 124
btr rsi, rcx
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
