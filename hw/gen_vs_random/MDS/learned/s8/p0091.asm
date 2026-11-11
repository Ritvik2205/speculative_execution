.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, ebx
and rdi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
xor cl, bl
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
xor dl, -19
or esi, -110
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rbx
bt ax, si
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
xor cl, al
test al, al
not al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
