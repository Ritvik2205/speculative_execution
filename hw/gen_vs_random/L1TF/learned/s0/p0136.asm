.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], al
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], al
lea ecx, qword ptr [rax + rsi]
setb bl
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 7
adc al, -90
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], cl
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 771970974
cmovb edx, ebx
and rbx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rbx]
sbb cl, 83
cwd
or al, al
and rsi, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rsi]
xor al, 14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
