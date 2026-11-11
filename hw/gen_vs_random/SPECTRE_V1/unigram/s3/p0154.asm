.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rax]
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
btr ebx, 4
setno al
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], -90
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
or al, 94
sbb dil, 77
add bl, 36 # instrumentation
setnl bl
and rdi, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdi]
test bl, 92
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], ecx
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], rsi
and rcx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rsi]
setno dl
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
