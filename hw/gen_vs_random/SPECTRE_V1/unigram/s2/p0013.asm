.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub rax, -1628299544
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], ebx
add cl, 0 # instrumentation
adc al, bl
cmovnbe esi, edx
test al, 40
cmovz edi, esi
and rdi, rax
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -93
and rsi, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rsi]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
add al, -53 # instrumentation
sbb al, cl
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
or bl, dl
sbb ecx, 60
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rsi
sub cl, -47
cmovs eax, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
