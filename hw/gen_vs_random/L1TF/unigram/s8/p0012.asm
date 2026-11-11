.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc ecx, 57
setnle sil
neg al
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 46
and rdx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdx]
add bl, bl
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], 53
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
add bl, -63 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], bl
or si, 1 # instrumentation
and dx, si # instrumentation
shr dx, 1 # instrumentation
div si
cmovs cx, bx
and rax, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 1 # instrumentation
and edx, dword ptr [r14 + rax] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dl
and rbx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rbx], 98
imul al
movzx si, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
