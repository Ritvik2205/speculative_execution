.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rsi, 1 # instrumentation
and rdx, rsi # instrumentation
shr rdx, 1 # instrumentation
div rsi
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
and rax, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rax]
lea dx, qword ptr [rcx + rcx + 38]
mov dil, dl
and rbx, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rbx]
setz dl
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], 36
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], 38
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], rdx
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], -61
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rax]
lea di, qword ptr [rbx + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
