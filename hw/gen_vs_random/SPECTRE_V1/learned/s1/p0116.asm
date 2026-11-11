.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dl
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
cmp al, sil
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dil
or ax, 18658
add al, -72
adc dil, 49
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
