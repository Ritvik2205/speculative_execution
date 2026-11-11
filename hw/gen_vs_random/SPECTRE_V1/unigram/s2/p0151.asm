.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rax]
xor sil, 1
lea si, qword ptr [rcx]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], al
js .bb_0.1
jmp .exit_0
.bb_0.1:
setno sil
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], 76
add al, 98 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdi]
sbb cl, sil
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], 25
setb cl
setns dil
bts rbx, 140
cmp rbx, rax
cwde
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rdi]
add bl, -26 # instrumentation
adc eax, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
