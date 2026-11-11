.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rdx]
lea rsi, qword ptr [rax + rcx]
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
setle dl
and rbx, rsi
and rax, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rax]
cmovo rdx, rdx
add bl, -61 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rdi]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
xor al, dl
sub sil, -18
movsx rax, cx
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
add rdi, 57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
