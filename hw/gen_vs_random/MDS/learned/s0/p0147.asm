.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
or rdx, -109
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dil
xor rax, -843636050
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rsi]
or cl, al
jmp .bb_0.1
.bb_0.1:
xor sil, -14
and rax, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
and si, -121
and edi, 23
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 67
test eax, -675944960
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
