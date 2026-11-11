.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 126 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], si
cmp bl, al
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], -12
cmp rdx, rdi
and ebx, edx
add dil, al
setle al
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 98
imul cl
and rax, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rax]
xor al, dil
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
or dl, 61
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -109
add rdx, 58
add cl, 121 # instrumentation
cmovs esi, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
