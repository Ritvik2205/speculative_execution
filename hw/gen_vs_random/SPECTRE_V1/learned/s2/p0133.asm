.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rcx + rdi + 25527]
bt di, 236
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rdi]
add cl, -109 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], -105
lea rcx, qword ptr [rax + rcx + 59274]
adc al, cl
and rbx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], esi
and rcx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], 51
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], -75
and rsi, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rsi]
cmovl ecx, ebx
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ecx
lea ax, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
