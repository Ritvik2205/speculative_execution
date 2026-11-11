.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
lea edi, qword ptr [rdi + rax]
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rsi
cmovle bx, si
and rbx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rbx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdx]
adc al, cl
and rbx, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rbx]
cmp rdx, -19
and rdx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rdx], edx
add al, -14 # instrumentation
lea di, qword ptr [rdx + rax]
adc esi, -66
btc bx, 118
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], 1
mul cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
