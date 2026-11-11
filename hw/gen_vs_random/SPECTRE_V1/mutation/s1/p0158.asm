.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea eax, qword ptr [rdx + rdx + 39359]
or rdi, 68
and rdx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rcx
sub al, 63
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], bl
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rdx]
adc cx, cx
loop .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
cmovnp rdx, rax
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], ebx
and rdx, 0b1111111111111 # instrumentation
cmp di, word ptr [r14 + rdx]
cmp al, 23
lea ecx, qword ptr [rcx]
cmovs rcx, rcx
and rax, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
