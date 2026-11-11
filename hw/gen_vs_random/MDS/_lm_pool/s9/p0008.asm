.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -22
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], cx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 85
and cl, -111
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rbx
and rbx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rbx]
xor sil, bl
bt ebx, ecx
or al, cl
xor edi, 54
or dl, -31
or al, -61
and rbx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
