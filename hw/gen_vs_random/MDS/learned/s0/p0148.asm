.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], esi
and cl, 113 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], -23
bt edi, 254
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
xor edi, 38
and rcx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
cmovle esi, eax
and cl, -109 # instrumentation
cmovns rdi, rdi
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 26
cmovno eax, esi
test al, 74
and rdi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdi]
adc dx, 94
bt ebx, 107
or sil, -8
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], di
bts rdx, 255
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 1 # instrumentation
and edx, dword ptr [r14 + rdi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
