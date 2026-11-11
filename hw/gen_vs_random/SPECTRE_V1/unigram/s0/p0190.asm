.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec rdx
and rdx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rbx]
imul dil
mov dl, dl
and rsi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rsi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
lea rdx, qword ptr [rdx + rdi + 47]
cmovp ebx, edi
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rdi
and rbx, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rbx]
and sil, bl
and rax, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
