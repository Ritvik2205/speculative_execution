.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul al
and rcx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], cx
dec rax
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], esi
and rdi, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rdi]
add al, 127 # instrumentation
sets al
add cl, -61 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], ecx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
xor rax, 1636804787
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], edx
dec cl
setnbe dl
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], esi
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
movsx rdi, sil
and rdx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rdx], 65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
