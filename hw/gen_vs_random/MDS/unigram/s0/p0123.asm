.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
not dl
bts si, 158
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
cmovns di, bx
and rax, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rax]
or rcx, 54
xor dl, dl
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 5
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 118
btr di, 89
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dil
cmovnz rbx, rdi
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], eax
and ebx, ecx
and rbx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 59
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
