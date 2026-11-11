.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -34 # instrumentation
setl dl
sbb dl, dl
and rdx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdx], -29
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], esi
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
adc dl, cl
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], edi
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rbx]
lea rbx, qword ptr [rsi]
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rbx
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], sil
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
lea ax, qword ptr [rbx]
bt edi, 230
cmovnp rbx, rdi
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dl
bt rcx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
