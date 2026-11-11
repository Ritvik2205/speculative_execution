.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 126 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], ax
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], ax
neg edi
and rax, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rax]
neg sil
jmp .bb_0.1
.bb_0.1:
cmovb edx, ecx
and rax, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rax
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], rdx
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -104
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rdx]
add al, -67 # instrumentation
setz cl
or dil, al
lea dx, qword ptr [rdx + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
