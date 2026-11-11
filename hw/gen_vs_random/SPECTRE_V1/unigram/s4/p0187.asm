.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -1164392837
and rsi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rsi]
sbb dil, al
lea rbx, qword ptr [rbx + rdi]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1921229398
and rcx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rcx
setnb dl
xor rsi, 29
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
add dil, -56 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdi], edi
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], rax
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rax]
btr edi, 97
sub cl, al
lea eax, qword ptr [rdi + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
