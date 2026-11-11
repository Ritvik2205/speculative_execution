.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdx]
not di
cmovno bx, ax
add al, 80 # instrumentation
sbb dil, dil
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], -5
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, edi
lea ax, qword ptr [rcx]
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rcx
mov dx, cx
lea ax, qword ptr [rdx + rdx + 81]
sets dl
and rbx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rbx]
imul dl
add al, 66 # instrumentation
cmovnp eax, edi
imul rbx, rdx
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
