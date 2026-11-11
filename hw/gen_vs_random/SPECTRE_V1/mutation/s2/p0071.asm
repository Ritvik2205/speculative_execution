.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 2
test rsi, -1408527332
sbb eax, 2098460225
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
adc dl, 107
and rsi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rsi]
add ax, 6656
and rcx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rcx]
sbb rax, 342397759
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmp di, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], ebx
cmp al, 62
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], cl
cmovs rcx, rcx
cmovnp rdx, rax
lea ecx, qword ptr [rcx]
and rax, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
