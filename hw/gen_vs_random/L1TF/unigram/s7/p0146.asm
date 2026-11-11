.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
xor edi, 70
lea dx, qword ptr [rdx]
lea rsi, qword ptr [rdx]
add al, -48 # instrumentation
and rcx, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rcx]
xchg rbx, rdx
btr ecx, 21
and cl, 80
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], 11
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], di
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
bts eax, ebx
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 25
add bl, -52 # instrumentation
not esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
