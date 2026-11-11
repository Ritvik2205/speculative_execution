.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -97 # instrumentation
sets sil
xor cl, 71
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], 21
btr rdx, rdi
cmp dl, dl
and rbx, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rbx]
setnb bl
jl .bb_0.1
jmp .exit_0
.bb_0.1:
lea si, qword ptr [rax + rdx]
add dl, cl
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
or rdx, 92
xor rbx, -34
and rax, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rbx
xor edi, eax
and rdi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rax
and rbx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
