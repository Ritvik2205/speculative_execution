.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovz rbx, rsi
lea rax, qword ptr [rax]
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 44
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
xor dx, 78
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], sil
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
lea eax, qword ptr [rcx + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 63
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rcx], 30
and rax, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rax]
lea rbx, qword ptr [rdx + rsi]
cwde
and rbx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rbx]
neg al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
