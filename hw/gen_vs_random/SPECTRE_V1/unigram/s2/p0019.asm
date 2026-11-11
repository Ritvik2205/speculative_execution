.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], dil
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], cl
add dil, al
and rax, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rcx
add cl, -47 # instrumentation
setbe cl
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], ax
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], -77
imul eax
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -64
lea rdx, qword ptr [rax + rdx]
adc esi, -39
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rbx]
mul rcx
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], 34
and rdx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
