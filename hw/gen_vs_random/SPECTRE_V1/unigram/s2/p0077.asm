.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 42
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], bl
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], -53
test rcx, 65
dec dil
and rax, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rax]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], dx
and rbx, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], 59
cmovle rcx, rbx
add sil, -73 # instrumentation
setnbe sil
add eax, -2019837038
and rsi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rsi]
add cl, 75 # instrumentation
sbb dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
