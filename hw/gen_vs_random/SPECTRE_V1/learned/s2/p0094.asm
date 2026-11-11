.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -73 # instrumentation
setnbe al
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 56
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], 52
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], 54
test ecx, 729805876
lea edx, qword ptr [rbx + rax + 64]
mul dil
and rdx, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 5
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], eax
and rax, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], rbx
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 31
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 1 # instrumentation
and edx, dword ptr [r14 + rdi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], dl
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
