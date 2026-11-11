.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul rax
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 80
lea rax, qword ptr [rax]
lea ecx, qword ptr [rcx + rsi]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], al
sbb eax, esi
and rbx, 0b1111111111111 # instrumentation
cmp bx, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 76
lea rdx, qword ptr [rax + rbx]
add cl, 6 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 1 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rdx]
cmp dil, bl
and rax, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rax]
and dl, sil
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
