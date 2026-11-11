.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdi]
lea di, qword ptr [rdi]
btc ebx, 218
and rcx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rcx]
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], cl
and rsi, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rcx]
movsx cx, dl
and rdx, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rax]
add al, 16 # instrumentation
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -40
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
lea ebx, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
