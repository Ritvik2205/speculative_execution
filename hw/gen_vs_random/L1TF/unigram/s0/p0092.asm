.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub ebx, 39
lea eax, qword ptr [rsi + rcx]
or cl, dil
and rdx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdx]
sbb rdx, 98
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 7
and rcx, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rbx]
sbb ax, ax
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
add al, -9 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], 39
cwde
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
cmovb edi, edi
and rdi, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdi], 65
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
