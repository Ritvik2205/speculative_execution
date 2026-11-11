.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea di, qword ptr [rdi]
btc ebx, 218
and rdi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rcx]
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rbx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rbx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], cl
lea ebx, qword ptr [rdx]
and rsi, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rdx]
add al, 16 # instrumentation
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -40
movsx cx, dl
and rcx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
