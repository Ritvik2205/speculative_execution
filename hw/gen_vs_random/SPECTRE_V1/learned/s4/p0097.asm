.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 40 # instrumentation
lea dx, qword ptr [rsi + rsi]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rdx
jbe .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
dec rdi
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], -112
and rbx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rbx]
mov bl, bl
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rsi
lea edi, qword ptr [rcx + rbx]
jnl .bb_0.2
jmp .exit_0
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], -71
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], ebx
sub dl, cl
bt rsi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
