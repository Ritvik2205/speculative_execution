.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rbx]
and cx, 58
xor al, -119
and rdi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], si
sbb bl, sil
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], -77
and rdi, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rdi], eax
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
cmovo ax, dx
bts di, 144
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 61
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], bx
test rbx, 31
setno dl
and rax, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
