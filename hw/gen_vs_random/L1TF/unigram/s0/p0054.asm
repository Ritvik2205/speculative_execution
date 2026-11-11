.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnle sil
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 62
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], -36
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], -55
add dl, -126 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rcx]
test edi, 18
jmp .bb_0.1
.bb_0.1:
sub eax, -911655926
sbb al, 65
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], 7
sbb bx, 28
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], 54
sbb rdi, 110
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], cx
lea bx, qword ptr [rcx + rdi + 26]
add cl, 121 # instrumentation
cmovs ecx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
