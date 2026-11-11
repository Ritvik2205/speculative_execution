.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], ecx
or sil, -44
setnle dil
lea eax, qword ptr [rdx + rax + 51706]
lea rdi, qword ptr [rdx + rbx + 82]
test rbx, rsi
jmp .bb_0.1
.bb_0.1:
test rcx, rax
adc rbx, 71
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], cl
cmp ebx, ebx
cmovnp dx, cx
lea ecx, qword ptr [rdi + rdx + 41]
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 1
adc sil, 27
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
