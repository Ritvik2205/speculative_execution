.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 8
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1324040999
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
and ecx, -104
or sil, dl
not cl
xor dl, -43
and dil, -39
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
jmp .bb_0.2
.bb_0.2:
xor rdx, -59
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
or esi, -110
or al, 37
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 33
and rax, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
lea ecx, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
