.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rdi, 68
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], bl
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rdx]
sub al, -1
adc cx, cx
and rdx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rcx
lea eax, qword ptr [rdx + rdx + 832]
loop .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], ebx
cmovnp rdx, rax
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], cl
cmp al, -77
cmovs rcx, rcx
and rdx, 0b1111111111111 # instrumentation
cmp di, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
lea ecx, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
