.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 16
add al, 112 # instrumentation
setl dil
lea rdi, qword ptr [rdi + rax + 15]
or al, al
lea cx, qword ptr [rbx]
and rdx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 17
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], 26
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], bl
add dl, 6 # instrumentation
adc rbx, 73
test ebx, 85
movzx esi, al
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], edx
sbb cl, -122
and rdx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdx], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
