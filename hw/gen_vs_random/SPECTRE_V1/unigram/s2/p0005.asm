.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rax]
cmovnbe rdi, rsi
add bl, -41 # instrumentation
xchg dl, bl
test al, 70
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], 19
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], rbx
add dl, 92 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rcx]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, ebx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 32
and rdx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], 19
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], 15
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
