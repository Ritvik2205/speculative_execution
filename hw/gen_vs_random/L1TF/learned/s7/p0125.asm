.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 104 # instrumentation
mov eax, 82
and rbx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rbx], 34
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], sil
or dil, -113
xor al, 38
xor dl, 9
and rbx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], 109
add sil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
