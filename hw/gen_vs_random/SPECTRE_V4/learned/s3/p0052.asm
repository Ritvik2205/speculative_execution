.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, bx
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], eax
mul rbx
sets bl
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], -55
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rax
mov cl, cl
not bx
neg dil
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, eax
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 19
mov bl, bl
sub rax, -701741274
setno bl
sbb rax, 183833426
adc sil, 89
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 92
not rbx
imul dx, di
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 73
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
