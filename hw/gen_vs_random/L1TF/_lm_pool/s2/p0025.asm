.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cx, 113
and rbx, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rsi]
and al, sil
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
xor al, sil
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rcx
xchg al, dl
and rdx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rdx]
adc al, -61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
