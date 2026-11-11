.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rsi], rdi
and rax, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rax]
lea eax, qword ptr [rbx + rdx + 36]
cmovl rbx, rcx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], -58
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], sil
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], bl
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], 16
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rdx]
dec rdi
movsx edx, dl
mov dl, 6
setb cl
and rcx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rcx]
imul rsi, rdi
lea rax, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
