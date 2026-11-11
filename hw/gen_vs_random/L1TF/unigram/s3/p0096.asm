.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdi, qword ptr [rax]
inc cx
and rcx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rcx]
btr edx, edi
not cx
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 32
jmp .bb_0.1
.bb_0.1:
add dil, -117 # instrumentation
and rax, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rax]
mov dil, dl
cmp ecx, edx
adc esi, 42
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], 20
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], edx
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
sub eax, -911655926
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], 78
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
