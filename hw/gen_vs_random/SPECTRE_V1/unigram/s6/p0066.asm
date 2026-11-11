.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rcx]
and sil, 11
neg ebx
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 61
lea eax, qword ptr [rax]
test dil, dl
xor cx, 91
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], edi
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add edx, 22
and rbx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], cx
lea cx, qword ptr [rdx + rax]
xor rdx, 7
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 37
cmp rax, -72548874
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
