.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 3
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rsi
inc bl
lea rsi, qword ptr [rbx + rsi + 58]
and al, -68
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 38
lea rsi, qword ptr [rcx + rdi + 10]
adc cl, al
xchg eax, ebx
imul rsi, rax, 73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
