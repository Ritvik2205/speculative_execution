.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnb al
cmovb edx, edx
imul rax, rcx, 99
sub eax, -518999763
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], rcx
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 63 # instrumentation
cmovl dx, ax
and rax, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rdx]
mul di
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
add al, -27 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], 76
and rbx, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rdi]
add bl, 126 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], cl
lea di, qword ptr [rbx + rax]
and rcx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
