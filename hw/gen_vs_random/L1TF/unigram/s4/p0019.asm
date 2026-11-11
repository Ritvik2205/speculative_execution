.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb dil, 86
lea cx, qword ptr [rcx + rbx + 99]
and rbx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rbx]
add dl, -15 # instrumentation
cmovl rdx, rdi
and rdx, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
add bl, -19 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rdx]
setnle sil
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rax]
add dil, 66
xor edi, esi
xor dl, -91
lea bx, qword ptr [rax]
and rdx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], ax
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], eax
and rax, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
