.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], cl
or ebx, 11
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], -259018739
add al, -112 # instrumentation
and rax, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rax]
lea rdx, qword ptr [rbx + rsi + 10]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
add cl, -23 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
test edi, 46
test dx, 23
lea rsi, qword ptr [rcx]
cmp sil, -110
xor dil, al
lea si, qword ptr [rsi + rax + 4]
or rcx, 1 # instrumentation
and rdx, rcx # instrumentation
shr rdx, 1 # instrumentation
div rcx
add al, 27 # instrumentation
sbb ebx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
