.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], esi
cmovnp dx, ax
cmovns rax, rdi
lea ax, qword ptr [rcx + rbx + 26263]
and rdx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rdx]
imul rbx
add al, sil
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdi]
adc dl, -49
sub dil, dl
add cx, -103
btc ebx, ebx
lea ax, qword ptr [rax]
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 5
inc cl
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
