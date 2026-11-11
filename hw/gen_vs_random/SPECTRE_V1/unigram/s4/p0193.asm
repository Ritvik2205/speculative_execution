.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 27
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rbx], ecx
add bl, dil
and rsi, 0b1111111111111 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], sil
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], bl
lea rcx, qword ptr [rbx + rsi]
and rax, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 44
jno .bb_0.1
jmp .exit_0
.bb_0.1:
or ax, 0b1000000000000000 # instrumentation
bsf si, ax
lea rax, qword ptr [rbx + rdx]
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
movsx bx, bl
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 7
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], bl
bts rsi, 234
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
