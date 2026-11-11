.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setns cl
and rdi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdi]
lea cx, qword ptr [rcx + rcx + 89]
and rcx, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], 100
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
cmovb eax, ecx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rbx]
lea ebx, qword ptr [rdx + rdx + 46587]
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], bx
add bl, -43 # instrumentation
adc di, 86
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
adc edi, 17
and rdx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdx
adc ecx, 73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
