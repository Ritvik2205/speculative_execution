.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 115 # instrumentation
lea ecx, qword ptr [rcx + rdx]
lea edx, qword ptr [rbx]
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
sbb rax, 1183957102
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and rbx, -64
and rcx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rcx]
sbb al, -14
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], bl
test sil, dl
sbb cl, al
and rdi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdi]
setb cl
lea rcx, qword ptr [rdx]
and rdi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 8
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], esi
lea ecx, qword ptr [rbx + rbx + 2102]
add esi, -124
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
or ecx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
