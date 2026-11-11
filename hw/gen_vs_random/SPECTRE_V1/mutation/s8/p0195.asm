.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rcx
adc cx, cx
or rdi, 68
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], bl
sub al, 63
lea eax, qword ptr [rdx + rdx + 39359]
loop .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rax]
cmovs rcx, rcx
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
lea ecx, qword ptr [rcx]
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], cl
cmp al, 62
cmovnp rdx, rax
and rdx, 0b1111111111111 # instrumentation
cmp di, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
