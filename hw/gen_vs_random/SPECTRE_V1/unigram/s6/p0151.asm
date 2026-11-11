.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor edi, 115
xor rbx, -34
movzx di, dl
add sil, -104 # instrumentation
lea rsi, qword ptr [rdi + rdx + 7]
sub cl, -47
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rsi
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
mov dil, dl
lea di, qword ptr [rdx + rax]
imul eax, esi
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
cmovno ax, dx
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], cl
xor rcx, rsi
xor cl, cl
setnp al
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
