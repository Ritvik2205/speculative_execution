.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add ecx, 44
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], al
or cl, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv cl
xor rcx, rax
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], bl
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rax
add dl, -120 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rbx]
lea eax, qword ptr [rax]
btr ax, 197
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
lea eax, qword ptr [rsi + rsi + 81]
and rcx, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rsi]
xor cl, dl
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], -121
and rbx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rbx]
or rsi, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
