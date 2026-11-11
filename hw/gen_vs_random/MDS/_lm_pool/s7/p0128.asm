.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, 55
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdi
or al, 37
xor bl, -88
and al, 87
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
or sil, dil
xor al, 9
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
test al, sil
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
xor cl, sil
and al, -55
and rcx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rcx], edx
or rdx, -109
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
