.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 104 # instrumentation
mov eax, 77
xor cl, dl
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rdx]
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 92
jmp .bb_0.4
.bb_0.4:
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], ecx
lea si, qword ptr [rdx + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
