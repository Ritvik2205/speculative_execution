.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx esi, di
add al, -109
imul rbx
add cl, -127
or al, 19
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], -24
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], ax
and rsi, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rsi]
add sil, 13 # instrumentation
setns sil
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
cmovl esi, eax
and rbx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], ebx
and rax, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rax]
lea rbx, qword ptr [rax + rax + 37]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
