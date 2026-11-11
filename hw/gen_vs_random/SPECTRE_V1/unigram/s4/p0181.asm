.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp edx, ebx
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], rax
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 96
xchg rbx, rbx
lea bx, qword ptr [rdx + rbx]
add bl, al
cmovnbe si, ax
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, 7 # instrumentation
cmovnl edx, ebx
and rbx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], -40
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], sil
lea ebx, qword ptr [rcx + rbx + 87]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rdi
add al, 127 # instrumentation
sets dil
cwd
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
