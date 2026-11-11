.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], 1
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 1
and rax, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rax]
lea ecx, qword ptr [rcx]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 97
sub dil, cl
xor dl, bl
btr esi, edi
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], ecx
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], -86
and rdi, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdi], 50
and rcx, -29
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], di
and rsi, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
