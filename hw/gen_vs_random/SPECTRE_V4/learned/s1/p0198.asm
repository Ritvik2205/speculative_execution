.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add ax, -13169
mul ax
test dx, cx
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], esi
xor dil, dil
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 41
and rdx, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rdx]
add dil, 16
lea cx, qword ptr [rdx + rbx + 5]
bts esi, 241
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rax], ebx
xor al, al
test eax, -544019457
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 46
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], 12
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], al
xor al, cl
adc bl, 89
and rdi, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rdi]
sub esi, edi
or sil, sil
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], dx
cmovns eax, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
