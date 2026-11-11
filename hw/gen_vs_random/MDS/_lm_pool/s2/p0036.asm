.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs bx, ax
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -884248205
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
and bl, bl
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
btc bx, ax
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
xor bl, cl
and rdi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdi]
xor al, dil
and rdx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdx]
and al, 35
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
