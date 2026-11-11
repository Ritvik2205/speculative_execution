.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rcx]
setb bl
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], 23
add dl, 67 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rdx]
lea di, qword ptr [rdx]
cmp cl, 57
sub al, -47
and rax, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
setnbe cl
and rsi, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rsi
add bl, 97 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rbx]
sub rdx, 43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
