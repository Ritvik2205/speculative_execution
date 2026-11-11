.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], 52
setbe sil
sub rdx, 14
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], dx
or dx, 0b1000000000000000 # instrumentation
bsf di, dx
cmovl edx, esi
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
cmovnz rcx, rdi
or dl, 1 # instrumentation
add dl, -47 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rdx]
setnz al
sbb al, -61
btc rbx, 195
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], ebx
or dl, 1 # instrumentation
add al, -47 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], bl
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
cmp bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
