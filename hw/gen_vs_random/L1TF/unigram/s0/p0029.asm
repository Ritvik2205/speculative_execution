.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rax]
xor bx, 60
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], rdx
and rax, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rbx]
not cl
and si, bx
or dil, -28
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
dec sil
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 85
cmovo edx, eax
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], 54
and rdi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], 43
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -109
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
