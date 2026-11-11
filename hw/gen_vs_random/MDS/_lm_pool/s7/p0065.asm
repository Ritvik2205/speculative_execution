.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs bx, cx
xor rdx, -59
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdx]
and dl, -73
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and al, al
bt rax, 29
and dl, -73
bts edx, 189
xor dl, 34
or rdi, 21
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
or ebx, -104
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
