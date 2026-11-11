.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
or cl, 16
sbb dl, 68
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], sil
and rax, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rax]
xor bl, bl
cmovns ecx, ecx
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], 54
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
adc si, 83
and rbx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 28
setle al
add al, 61 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], -85
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 358568732
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
