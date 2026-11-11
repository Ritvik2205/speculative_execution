.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], 96
sbb sil, al
lea rax, qword ptr [rcx]
and rdi, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rsi]
sub al, bl
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], al
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rax
lea di, qword ptr [rax + rcx]
add dl, dl
cmp dil, -78
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and cx, 33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
