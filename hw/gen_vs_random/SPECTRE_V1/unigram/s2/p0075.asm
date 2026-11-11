.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], 72
and rcx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
mul al
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rdi
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 70
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], 16
lea rdi, qword ptr [rsi + rax]
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], eax
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], si
sbb rbx, 63
or al, cl
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rsi
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edx
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 2114064901
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
