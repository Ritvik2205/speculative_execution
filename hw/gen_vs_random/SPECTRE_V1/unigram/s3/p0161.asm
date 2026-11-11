.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea bx, qword ptr [rdx + rcx + 24]
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], dl
and rax, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rax]
not dx
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], bl
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 55
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
xor sil, -33
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
adc dl, -49
and rcx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], edi
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], -86
test dl, sil
add si, 37
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 1
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
