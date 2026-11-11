.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
or al, dil
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rax
or dil, -41
xor al, -4
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ecx
and bl, dil
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
and al, 84
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 41
or dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
