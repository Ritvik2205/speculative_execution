.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rdx
cmp cx, di
lea di, qword ptr [rbx]
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], dl
sub sil, -99
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 7
xor si, -50
jmp .bb_0.1
.bb_0.1:
sbb al, -23
lea ax, qword ptr [rcx + rbx + 94]
imul dl
add al, -34 # instrumentation
setnp dil
and rsi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rsi]
cmovno ebx, ebx
add bl, 115 # instrumentation
lea eax, qword ptr [rax + rbx]
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], -128
cmp edx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
