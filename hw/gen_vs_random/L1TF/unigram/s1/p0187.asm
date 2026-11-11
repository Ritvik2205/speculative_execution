.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts ebx, esi
and rdx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rdx]
lea ebx, qword ptr [rax + rsi + 71]
add di, 55
sub bl, 15
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], rcx
bts eax, edx
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx], 21
setb sil
cmovl bx, di
and rdi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rdi], edx
and rsi, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rsi]
sbb al, sil
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
lea ebx, qword ptr [rcx + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
